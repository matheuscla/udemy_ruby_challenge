class DeleteFamilyService
  def initialize(user)
    @user = user
    @family_id = @user.family_id
    @family = Family.find(@family_id)
  end
  def call
    if @family.users.count == 1
       @user.family_id = 0
       @user.save
       @family.destroy
    else
      @user.family_id = 0
      @user.save
    end
  end
end
