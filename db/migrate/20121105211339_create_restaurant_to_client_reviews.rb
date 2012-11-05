class CreateRestaurantToClientReviews < ActiveRecord::Migration
  def change
    create_table :restaurant_to_client_reviews do |t|
      t.int :client_id
      t.int :restaurant_id
      t.text :review
      t.int :score

      t.timestamps
    end
  end
end
