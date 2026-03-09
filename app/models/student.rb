class Student < ApplicationRecord
  belongs_to :course
  has_many :student_modules, dependent: :destroy

  after_create :assign_default_modules

  private

  def assign_default_modules
    course.course_modules.ordered.find_each do |template|
      student_modules.create!(
        module_name: template.module_name,
        status: "SUBMITTED & NOT MARKED" # your chosen default
      )
    end
  end
end