class FixCourseModules < ActiveRecord::Migration[8.0]
  def change
    # Remove wrong student reference
    remove_reference :course_modules, :student, foreign_key: true

    # Add correct course reference
    add_reference :course_modules, :course, null: false, foreign_key: true

    # Rename fields to match purpose (optional)
    rename_column :course_modules, :module_name, :name
    remove_column :course_modules, :status, :string
    remove_column :course_modules, :notes, :text
  end
end