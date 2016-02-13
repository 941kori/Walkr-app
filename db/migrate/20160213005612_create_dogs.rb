class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.float :rating

      t.timestamps null: false
    end
  end
end
