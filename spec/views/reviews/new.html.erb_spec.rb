require 'rails_helper'

RSpec.describe "reviews/new", type: :view do
  before(:each) do
    assign(:review, Review.new(
      :user => nil,
      :title => "MyString",
      :body => "MyText"
    ))
  end

  it "renders new review form" do
    render

    assert_select "form[action=?][method=?]", reviews_path, "post" do

      assert_select "input#review_user_id[name=?]", "review[user_id]"

      assert_select "input#review_title[name=?]", "review[title]"

      assert_select "textarea#review_body[name=?]", "review[body]"
    end
  end
end
