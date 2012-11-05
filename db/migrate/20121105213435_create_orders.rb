class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :client_id
      t.integer :restaurant_id
      t.text :content
      t.string :zipcode
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
