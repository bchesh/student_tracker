class Student < ApplicationRecord
  has_many :enrollments, dependent: :destroy
  has_many :courses, through: :enrollments
  has_many :student_modules, through: :enrollments

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, allow_blank: true
  validates :phone, length: { minimum: 7 }, allow_blank: true

  STUDENT_STATUSES = [
    "active",
    "paused",
    "completed",
    "inactive"
  ].freeze

  validates :status, inclusion: { in: STUDENT_STATUSES }, allow_nil: true
end