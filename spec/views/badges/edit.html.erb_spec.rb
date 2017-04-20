require 'rails_helper'

RSpec.describe "badges/edit", type: :view do
  before(:each) do
    @badge = assign(:badge, Badge.create!(
      :user => nil,
      :name => "MyString"
    ))
  end

  it "renders the edit badge form" do
    render

    assert_select "form[action=?][method=?]", badge_path(@badge), "post" do

      assert_select "input#badge_user_id[name=?]", "badge[user_id]"

      assert_select "input#badge_name[name=?]", "badge[name]"
    end
  end
end
