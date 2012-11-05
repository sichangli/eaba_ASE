class RestaurantToClientReview < ActiveRecord::Base
  attr_accessible :client_id, :restaurant_id, :review, :score
end
