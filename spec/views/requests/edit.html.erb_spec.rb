require 'rails_helper'

RSpec.describe "requests/edit", type: :view do
  before(:each) do
    @request = assign(:request, Request.create!(
      :user => nil,
      :product => nil,
      :approved => false,
      :message => "MyText"
    ))
  end

  it "renders the edit request form" do
    render

    assert_select "form[action=?][method=?]", request_path(@request), "post" do

      assert_select "input#request_user_id[name=?]", "request[user_id]"

      assert_select "input#request_product_id[name=?]", "request[product_id]"

      assert_select "input#request_approved[name=?]", "request[approved]"

      assert_select "textarea#request_message[name=?]", "request[message]"
    end
  end
end
