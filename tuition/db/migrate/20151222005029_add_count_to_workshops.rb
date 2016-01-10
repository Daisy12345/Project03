class AddCountToWorkshops < ActiveRecord::Migration
  def change
  	add_column :workshops, :count, :integer
  end
end