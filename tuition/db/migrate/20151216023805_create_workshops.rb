class CreateWorkshops < ActiveRecord::Migration
  def change
    create_table :workshops do |t|
      t.string :name
      t.string :duration
      t.datetime :date
      t.string :no_of_students
      t.string :price
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
