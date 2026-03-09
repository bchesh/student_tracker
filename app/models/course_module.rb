class CourseModule < ApplicationRecord
  belongs_to :course

  validates :name, presence: true, length: { maximum: 200 }
  validates :name, uniqueness: {
    scope: :course_id,
    case_sensitive: false,
    message: "already exists on this course"
  }
end