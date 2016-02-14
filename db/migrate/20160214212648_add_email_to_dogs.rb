class AddEmailToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :email, :string

  end
end
