class Property < ActiveRecord::Base
  attr_accessible :name
  
  has_many :bookings #, :dependent => destory
end
