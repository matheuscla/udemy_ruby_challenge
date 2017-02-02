class FamiliesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.family_id == 0
      redirect_to users_path

    else
      @family = Family.find(current_user.family_id)
    end
  end

  def create
    if current_user.family_id !=0
      flash[:danger] = "You Already has a Family"
      redirect_to users_path
    else
      @family = Family.create
      current_user.family_id = @family.id
      if current_user.save
        flash[:success] = "Family was successfully created!"
              redirect_to root_path
          end
      end
    end

    def destroy
      @family = Family.find(params[:id])
      @users = @family.users
      @users.each do |user|
        user.family_id = 0
        user.save
      end
      flash[:danger] = "Family was successfully deleted"
      redirect_to users_path
    end

  def add_to_family
    @family = current_user.family_id
    @user = User.find(params[:id])
    @user.family_id = @family
    @user.save
    redirect_to users_path
  end

  def delete_to_family
    @user = User.find(params[:id])
    @user.family_id = 0
    @user.save
    redirect_to user_path(@user)
  end
end
