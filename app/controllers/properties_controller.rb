class PropertiesController < ApplicationController
  
  def new
    @navigation = "dashboard"
    @property = Property.new
  end

  def create
    @property = Property.new(params[:property])
    if @property.save
      flash[:success] = "Property created"
      redirect_to @property
    else
      @navigation = "dashboard"
      render 'new'
    end
  end
  
  def show
    @property = Property.find(params[:id])
    @title = @property.name
    @breadcrumb = { :name => "Back to Dashboard", :path => root_path }
    @navigation = "property"
    @sidebar = "bookings"
    @bookings = @property.bookings
  end
end
