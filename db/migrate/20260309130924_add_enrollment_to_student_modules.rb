class AddEnrollmentToStudentModules < ActiveRecord::Migration[8.0]
  def change
    add_reference :student_modules, :enrollment, null: false, foreign_key: true
  end
end
