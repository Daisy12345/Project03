class AddUserIdToPersonalclasses < ActiveRecord::Migration
  def change
    add_column :personalclasses, :user_id, :integer
  end
end
