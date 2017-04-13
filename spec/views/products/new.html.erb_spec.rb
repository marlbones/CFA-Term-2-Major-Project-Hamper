require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :title => "MyString",
      :user => nil,
      :cost => "9.99",
      :collection => 1,
      :items => 1,
      :contents => "MyText",
      :perishables => false,
      :non_perishables => false,
      :description => "MyText"
    ))
  end

  xit "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_title[name=?]", "product[title]"

      assert_select "input#product_user_id[name=?]", "product[user_id]"

      assert_select "input#product_cost[name=?]", "product[cost]"

      assert_select "input#product_collection[name=?]", "product[collection]"

      assert_select "input#product_items[name=?]", "product[items]"

      assert_select "textarea#product_contents[name=?]", "product[contents]"

      assert_select "input#product_perishables[name=?]", "product[perishables]"

      assert_select "input#product_non_perishables[name=?]", "product[non_perishables]"

      assert_select "textarea#product_description[name=?]", "product[description]"
    end
  end
end
