class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.int :camis
      t.string :dba
      t.int :boro
      t.int :building
      t.string :street
      t.string :zipcode
      t.string :phone
      t.int :cuisinecode
      t.string :inspdate
      t.string :action
      t.int :violcode
      t.int :score
      t.string :currentgrade
      t.string :gradedate
      t.string :recorddate

      t.timestamps
    end
  end
end
