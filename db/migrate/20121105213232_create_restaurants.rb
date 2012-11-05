class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.integer :camis
      t.string :dba
      t.integer :boro
      t.integer :building
      t.string :street
      t.string :zipcode
      t.string :phone
      t.integer :cuisinecode
      t.string :inspdate
      t.string :action
      t.integer :violcode
      t.integer :score
      t.string :currentgrade
      t.string :gradedate
      t.string :recorddate

      t.timestamps
    end
  end
end
