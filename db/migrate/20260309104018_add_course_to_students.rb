class AddCourseToStudents < ActiveRecord::Migration[8.0]
  def change
    add_reference :students, :course, null: true, foreign_key: true
  end
end