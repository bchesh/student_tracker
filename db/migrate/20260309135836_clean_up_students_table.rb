class CleanUpStudentsTable < ActiveRecord::Migration[8.0]
  def change
    # Remove leftover single-course fields (old system)
    remove_column :students, :course, :string rescue nil
    remove_column :students, :start_date, :date rescue nil
    remove_column :students, :end_date, :date rescue nil
  end
end