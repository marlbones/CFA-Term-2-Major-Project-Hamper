require 'rails_helper'

RSpec.describe "badges/new", type: :view do
  before(:each) do
    assign(:badge, Badge.new(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders new badge form" do
    render

    assert_select "form[action=?][method=?]", badges_path, "post" do

      assert_select "input#badge_user_id[name=?]", "badge[user_id]"

      assert_select "input#badge_name[name=?]", "badge[name]"
    end
  end
end
