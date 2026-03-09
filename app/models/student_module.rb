class StudentModule < ApplicationRecord
  belongs_to :enrollment
  belongs_to :course_module  # <-- REQUIRED
  has_one :student, through: :enrollment
  has_one :course, through: :enrollment

  MODULE_STATUSES = [
    "PASSED",
    "SUBMITTED & NOT MARKED",
    "CORRECTIONS SENT",
    "NO WORK / NOT COMPLETED",
    "AI DETECTED (SENT TO REDO)"
  ]
end