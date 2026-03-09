class MakeCourseNotNullOnStudents < ActiveRecord::Migration[8.0]
  def change
    change_column_null :students, :course_id, false
  end
end