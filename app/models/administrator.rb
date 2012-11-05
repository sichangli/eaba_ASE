class Administrator < ActiveRecord::Base
  attr_accessible :account_name, :name, :password
end
