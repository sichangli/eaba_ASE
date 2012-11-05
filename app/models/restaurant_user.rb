class RestaurantUser < ActiveRecord::Base
  attr_accessible :account_name, :license, :name, :password, :phone, :restaurant_id
end
