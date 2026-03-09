class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  has_many :student_modules, dependent: :destroy

  after_create :assign_course_modules

  def assign_course_modules
    course.course_modules.each do |cm|
      student_modules.create!(
        course_module: cm,
        module_name: cm.name,
        status: "SUBMITTED & NOT MARKED"
      )
    end
  end
end