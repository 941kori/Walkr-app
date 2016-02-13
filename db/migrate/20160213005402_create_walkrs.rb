class CreateWalkrs < ActiveRecord::Migration
  def change
    create_table :walkrs do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.float :rating

      t.timestamps null: false
    end
  end
end
