class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC")
    else
      @users = User.paginate(page: params[:page],per_page:4 )
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def  my_friends
    @friendship = current_user.friends
  end

  def add_friend
    @user = User.find(params[:id])
    current_user.friends << @user
    redirect_to users_path
  end


end
