require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :title => "Title",
        :user => nil,
        :cost => "9.99",
        :collection => 2,
        :items => 3,
        :contents => "MyText",
        :perishables => false,
        :non_perishables => false,
        :description => "MyText"
      ),
      Product.create!(
        :title => "Title",
        :user => nil,
        :cost => "9.99",
        :collection => 2,
        :items => 3,
        :contents => "MyText",
        :perishables => false,
        :non_perishables => false,
        :description => "MyText"
      )
    ])
  end

  xit "renders a list of products" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
