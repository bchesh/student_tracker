class RemoveStudentIdFromStudentModules < ActiveRecord::Migration[8.0]
  def change
    remove_foreign_key :student_modules, :students rescue nil
    remove_column :student_modules, :student_id, :bigint
  end
end

