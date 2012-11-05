class Order < ActiveRecord::Base
  attr_accessible :address, :client_id, :content, :phone, :restaurant_id, :zipcode
end
