class ProfilesController < ApplicationController
  def show
  	@user = current_user
	@users=User.all.where.not(id:current_user.id)
    @user_friends = UserFriend.all
	@friends= current_user.user_friends.pluck(:friend_id)
	  @wallposts = Wallpost.all.where(user_id: current_user.id).order('created_at DESC')
  end
end
