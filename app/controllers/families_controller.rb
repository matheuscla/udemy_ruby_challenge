class FamiliesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.family_id == 0

    else
      @family = Family.find(current_user.family_id)
    end
  end

  def add_to_family
    @family = current_user.family_id
    @user = User.find(params[:id])
    @user.family_id = @family
    @user.save
    redirect_to users_path
  end
end
