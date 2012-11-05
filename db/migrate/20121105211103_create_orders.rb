class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.int :client_id
      t.int :restaurant_id
      t.text :content
      t.string :zipcode
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
