class RemoveCourseIdFromStudents < ActiveRecord::Migration[8.0]
  def change
    # remove foreign key first (if present)
    remove_foreign_key :students, :courses rescue nil

    # remove the column
    remove_column :students, :course_id, :bigint
  end
end