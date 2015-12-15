class AddBookedToPersonalclasses < ActiveRecord::Migration
  def change
    add_column :personalclasses, :booked, :boolean, default: false
  end
end
