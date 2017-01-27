class FamiliesController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user.family_id == 0
      redirect_to users_path
    else
      @family = Family.find(current_user.family_id)
    end
  end
end
