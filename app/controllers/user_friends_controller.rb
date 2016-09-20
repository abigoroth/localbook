class UserFriendsController < ApplicationController

  #before_action :set_user_friend, only: [:show, :edit, :update, :destroy]

  # GET /user_friends
  # GET /user_friends.json
  def index
	@users=User.all.where.not(id:current_user.id)
    @user_friends = UserFriend.all
	@friends= current_user.user_friends.pluck(:friend_id)
  end

  # GET /user_friends/1
  # GET /user_friends/1.json
  def show
  end

  # GET /user_friends/new
  def new
    @user_friend = UserFriend.new
  end

  # GET /user_friends/1/edit
  def edit
  end

  # POST /user_friends
  # POST /user_friends.json
  def create
    @user_friend = current_user.user_friends.build(:friend_id => params[:friend_id])

    respond_to do |format|
      if @user_friend.save
        format.html { redirect_to user_friends_path, notice: 'Friend successfully added to friendlist' }
        format.json { render :show, status: :created, location: @user_friend }
      else
        format.html { render :new }
        format.json { render json: @user_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_friends/1
  # PATCH/PUT /user_friends/1.json
  def update
    respond_to do |format|
      if @user_friend.update(user_friend_params)
        format.html { redirect_to @user_friend, notice: 'User friend was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_friend }
      else
        format.html { render :edit }
        format.json { render json: @user_friend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_friends/1
  # DELETE /user_friends/1.json
  def destroy
  @user_friend= UserFriend.find_by(user_id: current_user.id,friend_id:params[:friend_id])
    @user_friend.destroy #if @user_friend
    respond_to do |format|
      format.html { redirect_to user_friends_url, notice: 'User friend was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_friend
      @user_friend = UserFriend.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_friend_params
      params.require(:user_friend).permit(:user_id, :friend_id, :id)
    end
end
