class CreateCourseModuleTemplates < ActiveRecord::Migration[8.0]
  def change
    create_table :course_module_templates do |t|
      t.references :course, null: false, foreign_key: true
      t.string :module_name

      t.timestamps
    end
  end
end
