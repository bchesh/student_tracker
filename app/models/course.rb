class Course < ApplicationRecord
  has_many :course_modules, dependent: :destroy
  has_many :students
end