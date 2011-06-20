class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.integer :property_id
      t.string :guest_name
      t.datetime :check_in_date
      t.datetime :check_out_date

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
