class DashboardController < ApplicationController
  
  def index
    @navigation = "dashboard"
    @sidebar = "properties"
    @properties = Property.all
  end

end