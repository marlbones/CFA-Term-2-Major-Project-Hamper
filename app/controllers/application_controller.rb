class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || root_path)
  end

  def status
    @user = current_user
      if @user.products.count == 5 && @user.badges(name: "Super Producer").blank?
        Badge.create(user_id: current_user.id, name: "Super Producer")
      end
  end

end
