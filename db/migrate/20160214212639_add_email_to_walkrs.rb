class AddEmailToWalkrs < ActiveRecord::Migration
  def change
    add_column :walkrs, :email, :string
  end
end
