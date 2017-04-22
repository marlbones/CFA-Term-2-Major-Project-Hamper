require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

  describe "GET #index" do
   it "can reach index if signed in" do
     user = build(:user)
     controller.sign_in user
     get :index
     expect(response).to have_http_status(:success)
   end
 end

  describe "GET #index" do
      it "no" do
        get :index
        expect(response).to_not have_http_status(:success)
      end
   end

end
