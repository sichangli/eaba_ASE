class CreateRestaurantToClientReviews < ActiveRecord::Migration
  def change
    create_table :restaurant_to_client_reviews do |t|
      t.integer :client_id
      t.integer :restaurant_id
      t.text :review
      t.integer :score

      t.timestamps
    end
  end
end
