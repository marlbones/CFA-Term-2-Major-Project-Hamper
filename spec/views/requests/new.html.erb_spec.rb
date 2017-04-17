require 'rails_helper'

RSpec.describe "requests/new", type: :view do
  before(:each) do
    assign(:request, Request.new(
      :user => nil,
      :product => nil,
      :approved => false,
      :message => "MyText"
    ))
  end

  it "renders new request form" do
    render

    assert_select "form[action=?][method=?]", requests_path, "post" do

      assert_select "input#request_user_id[name=?]", "request[user_id]"

      assert_select "input#request_product_id[name=?]", "request[product_id]"

      assert_select "input#request_approved[name=?]", "request[approved]"

      assert_select "textarea#request_message[name=?]", "request[message]"
    end
  end
end
