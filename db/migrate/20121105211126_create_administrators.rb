class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :account_name
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
