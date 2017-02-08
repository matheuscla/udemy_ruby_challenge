class DestroyFamilyService
  def initialize(family)
    @family = family
  end

  def call
    @users = @family.users
    @users.each do |user|
      user.family_id = 0
      user.save
    end
  end
end
