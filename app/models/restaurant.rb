class Restaurant < ActiveRecord::Base
  attr_accessible :action, :boro, :building, :camis, :cuisinecode, :currentgrade, :dba, :gradedate, :inspdate, :phone, :recorddate, :score, :street, :violcode, :zipcode
end
