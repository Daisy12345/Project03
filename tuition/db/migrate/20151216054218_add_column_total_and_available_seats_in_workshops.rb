class AddColumnTotalAndAvailableSeatsInWorkshops < ActiveRecord::Migration
  def change
  	add_column :workshops, :total_seats, :integer
  	add_column :workshops, :available_seats, :integer
  end
end
