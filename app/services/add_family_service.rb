class AddFamilyService
  def initialize(family_id,user)
    @family =family_id
    @user = user
  end
  def call
    @user.family_id = @family
    @user.save

  end
end
