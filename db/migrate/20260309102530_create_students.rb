class CreateStudents < ActiveRecord::Migration[8.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :course
      t.date :start_date
      t.date :end_date
      t.text :notes

      t.timestamps
    end
  end
end
