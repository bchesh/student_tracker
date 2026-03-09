class Student < ApplicationRecord
has_many :course_modules, dependent: :destroy
end
