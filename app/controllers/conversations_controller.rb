class ConversationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @users = User.all
    @conversations = Conversation.all
    @user_friends = UserFriend.all
	  @friends= current_user.user_friends.pluck(:friend_id)
    @inbox= current_user.conversations.pluck(:user_id)
  end

  def create
    if Conversation.between(params[:sender_id],params[:receiver_id]).present?
    @conversation = Conversation.between(params[:sender_id], params[:receiver_id]).first
  else
    @conversation = Conversation.create!(conversation_params)
    end
      redirect_to conversation_messages_path(@conversation)
  end

private
 def conversation_params
  params.permit(:sender_id, :receiver_id)
 end

end
