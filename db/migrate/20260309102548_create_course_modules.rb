class CreateCourseModules < ActiveRecord::Migration[8.0]
  def change
    create_table :course_modules do |t|
      t.references :student, null: false, foreign_key: true
      t.string :module_name
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
