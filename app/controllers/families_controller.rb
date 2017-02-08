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
      flash[:danger] = "You Already have a Family!"
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
<<<<<<< HEAD
      DestroyFamilyService.new(Family.find(params[:id])).call
=======
      @family = Family.find(params[:id])
      @users = @family.users
      @users.each do |user|
        user.family_id = 0
        user.save
      end
>>>>>>> 523790883065f07f2c25762ef24191cb99463952
      flash[:danger] = "Family was successfully deleted"
      redirect_to users_path
    end

  def add_to_family
    AddFamilyService.new(current_user.family_id, User.find(params[:id])).call
    redirect_to users_path
  end

  def delete_to_family
<<<<<<< HEAD
    DeleteFamilyService.new(User.find(params[:id])).call
    redirect_to root_path
=======
    @user = User.find(params[:id])
    @family_id = @user.family_id
    @family = Family.find(@family_id)
    if @family.users.count == 1
       @user.family_id = 0
       @user.save
       @family.destroy
       redirect_to root_path
    else
      @user.family_id = 0
      @user.save
      redirect_to root_path
    end
>>>>>>> 523790883065f07f2c25762ef24191cb99463952
  end
end
