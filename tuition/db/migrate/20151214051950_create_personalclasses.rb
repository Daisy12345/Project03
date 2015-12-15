class CreatePersonalclasses < ActiveRecord::Migration
  def change
    create_table :personalclasses do |t|
      t.string :tutor_name
      t.string :subject
      t.date :date
      t.time :time

      t.timestamps null: false
    end
  end
end
