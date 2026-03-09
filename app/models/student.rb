class Student < ApplicationRecord
  belongs_to :course
  has_many :student_modules, dependent: :destroy

  STUDENT_STATUSES = [
    "active",
    "paused",
    "completed",
    "inactive"
  ].freeze

  validates :status, inclusion: { in: STUDENT_STATUSES }, allow_nil: true
end