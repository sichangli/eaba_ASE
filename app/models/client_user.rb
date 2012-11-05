class ClientUser < ActiveRecord::Base
  attr_accessible :account_name, :address, :birthday, :gender, :name, :password, :phone, :zipcode
end
