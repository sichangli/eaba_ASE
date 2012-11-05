class CreateRestaurantUsers < ActiveRecord::Migration
  def change
    create_table :restaurant_users do |t|
      t.string :account_name
      t.string :name
      t.string :password
      t.string :license
      t.string :phone
      t.int :restaurant_id

      t.timestamps
    end
  end
end
