class FriendShipsController < ApplicationController

  def destroy
    friend = User.find(params[:id])
    user_friend = FriendShip.where(user_id: current_user.id, friend_id: friend.id).first
    user_friend.destroy
    flash[:notice] = "#{friend.full_name} have successfully deleted."
    redirect_to my_friends_path
  end
end
