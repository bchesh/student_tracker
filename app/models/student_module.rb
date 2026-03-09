class StudentModule < ApplicationRecord
  belongs_to :student
  belongs_to :course_module, optional: true

  MODULE_STATUSES = [
    "PASSED",
    "SUBMITTED & NOT MARKED",
    "CORRECTIONS SENT",
    "NO WORK / NOT COMPLETED",
    "AI DETECTED (SENT TO REDO)"
  ].freeze

  validates :status, inclusion: { in: MODULE_STATUSES }, allow_nil: true
end