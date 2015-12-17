class AddUserRefToPersonalclasses < ActiveRecord::Migration
  def change
    add_reference :personalclasses, :user, index: true, foreign_key: true
  end
end
