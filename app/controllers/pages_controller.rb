class PagesController < ApplicationController
  def home
    @user = current_user
  end

  def selldash
    @products = current_user.products.order(created_at: :desc)
  end
end
