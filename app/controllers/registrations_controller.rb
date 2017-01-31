class RegistrationsController < Devise::RegistrationsController


  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :mi, :address1, :address2, :city, :zip, :country, :email, :password, :password_confirmation,:phone)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :mi, :address1, :address2, :city, :zip, :country, :email, :password, :password_confirmation, :current_password,:phone)
  end
end
