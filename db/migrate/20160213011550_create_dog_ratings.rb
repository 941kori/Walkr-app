class CreateDogRatings < ActiveRecord::Migration
  def change
    create_table :dog_ratings do |t|
      t.integer :rating

      t.timestamps null: false
    end
  end
end
