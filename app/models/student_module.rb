class StudentModule < ApplicationRecord
  belongs_to :student

  MODULE_STATUSES = [
    "PASSED",
    "SUBMITTED & NOT MARKED",       # ← change from &amp; to &
    "CORRECTIONS SENT",
    "NO WORK / NOT COMPLETED",
    "AI DETECTED (SENT TO REDO)"
  ].freeze

  validates :status, inclusion: { in: MODULE_STATUSES }, allow_nil: true
end