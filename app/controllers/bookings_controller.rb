class BookingsController < ApplicationController
  
  def index
    @property = Property.find(params[:property_id])
    @title = @property.name
    @breadcrumb = { :name => "Back to Dashboard", :path => root_path }
    @navigation = "property"
    @sidebar = "bookings"
    @bookings = @property.bookings
  end
  
  def new
    @navigation = "property"
    @property = Property.find(params[:property_id])
    @booking = Booking.new
  end

  def create
    @property = Property.find(params[:property_id])
    @booking = @property.bookings.build(params[:booking])
    if @booking.save
      flash[:success] = "Booking created"
      redirect_to [@property, @booking]
    else
      @navigation = "property"
      render 'new'
    end
  end

  def show
    @property = Property.find(params[:property_id])
    @booking = Booking.find(params[:id])
    @title = @property.name
    @breadcrumb = { :name => "Back to Dashboard", :path => root_path }
    @navigation = "property"
    @sidebar = "bookings"
    @bookings = @property.bookings
  end

end
