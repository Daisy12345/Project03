class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :First_name
      t.string :Last_name
      t.string :Phone
      t.string :Email

      t.timestamps null: false
    end
  end
end
