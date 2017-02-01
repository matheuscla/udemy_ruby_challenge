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
  @family = Family.create
  current_user.family_id = @family.id
  if current_user.save
          redirect_to users_path
      end
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
