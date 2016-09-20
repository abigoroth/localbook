class DashboardController < ApplicationController
  def index

  	@wallposts = Wallpost.all
  	
  end


end
