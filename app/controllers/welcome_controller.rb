class WelcomeController < ApplicationController
  def index
  	 @wallposts = Wallpost.all.where(user_id: current_user.user_friends.pluck(:friend_id)<<current_user.id).order('created_at DESC')
  end
end
