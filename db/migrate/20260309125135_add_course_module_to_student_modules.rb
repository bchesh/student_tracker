class AddCourseModuleToStudentModules < ActiveRecord::Migration[8.0]
  def change
    add_reference :student_modules, :course_module, null: false, foreign_key: true
  end
end
