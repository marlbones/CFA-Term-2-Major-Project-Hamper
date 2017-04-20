# This registration overrides the sign_up_params/account_update_params methods in the Devise controller. Over rides so that custom fields are..
# ..required for sign-up and get saved in database upon creation
class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :username, :location, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :username, :location, :email, :password, :password_confirmation, :current_password, :about, :favs, :age, :interests, :diet, :avatar)
  end
end
