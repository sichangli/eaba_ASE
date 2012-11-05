class CreateClientToRestaurantReviews < ActiveRecord::Migration
  def change
    create_table :client_to_restaurant_reviews do |t|
      t.integer :client_id
      t.integer :restaurant_id
      t.text :review
      t.integer :score

      t.timestamps
    end
  end
end
