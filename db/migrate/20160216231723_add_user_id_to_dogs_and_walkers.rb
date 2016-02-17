class AddUserIdToDogsAndWalkers < ActiveRecord::Migration
  def change
    add_column :dogs, :user_id, :integer
    add_column :walkrs, :user_id, :integer
  end
end
