class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @requests = current_user.requests
  end
end