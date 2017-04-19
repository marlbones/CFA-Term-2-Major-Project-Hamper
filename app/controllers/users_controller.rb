class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @requests = current_user.requests
    @reviews = Review.where(reviewee_id: params[:id])
  end
end
