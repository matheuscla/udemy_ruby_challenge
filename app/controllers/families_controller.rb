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
      DestroyFamilyService.new(Family.find(params[:id])).call
      flash[:danger] = "Family was successfully deleted"
      redirect_to users_path
    end

  def add_to_family
    AddFamilyService.new(current_user.family_id, User.find(params[:id])).call
    redirect_to users_path
  end

  def delete_to_family
    DeleteFamilyService.new(User.find(params[:id])).call
    redirect_to root_path
  end
end
