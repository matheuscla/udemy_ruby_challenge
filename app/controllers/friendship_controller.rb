class FriendshipController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    current_user.friendships.where(friend_id: @user.id).first.destroy
    redirect_to my_friends_path(current_user)
  end

end
