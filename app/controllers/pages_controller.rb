class PagesController < ApplicationController
  def home
    @user = current_user
  end

  def selldash
    @products = current_user.products.order(created_at: :desc)
    # Temporary! This isn't working how it should be. It should be just requests made specifically for users products!
    @requests = Request.all
  end

  def admindash
    authorize self
    @products = Product.all
    @users = User.all
    @requests = Request.all
    @badges = Badge.all
    @reviews = Review.all
  end
end
