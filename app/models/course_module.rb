# app/models/course_module.rb
class CourseModule < ApplicationRecord
  # ── Associations ──────────────────────────────────────────────────────────────
  belongs_to :course

  # ── Validations ───────────────────────────────────────────────────────────────
  # Template modules should at least have a name
  validates :module_name, presence: true, length: { maximum: 200 }

  # Optional: keep names unique per course to avoid duplicates like two "Intro" items
  validates :module_name, uniqueness: { scope: :course_id, case_sensitive: false,
                                        message: "already exists on this course" }

  # If you add an integer column `position` for ordering, you can validate it
  validates :position, numericality: { only_integer: true, greater_than: 0 }, allow_nil: true

  # ── Scopes (handy query helpers) ──────────────────────────────────────────────
  # Default ordering by position if present, then by name
  scope :ordered, -> { order(Arel.sql("COALESCE(position, 999999), module_name ASC")) }

  # Simple search by name (case-insensitive)
  scope :by_name, ->(term) {
    where("LOWER(module_name) LIKE ?", "%#{term.to_s.downcase.strip}%") if term.present?
  }

  # ── Instance Methods ─────────────────────────────────────────────────────────
  # A helper you can call when copying into StudentModules
  def to_student_module_attributes
    {
      module_name: module_name
      # no status here — statuses live on StudentModule
      # add other fields if you later expand the template (e.g., weight/due_date)
    }
  end
end