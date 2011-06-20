class Booking < ActiveRecord::Base
  attr_accessible :guest_name, :check_in_date, :check_out_date
  
  belongs_to :property
  
  default_scope :order => 'bookings.created_at ASC'
end
