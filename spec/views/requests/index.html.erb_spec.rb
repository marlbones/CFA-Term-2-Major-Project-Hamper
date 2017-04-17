require 'rails_helper'

RSpec.describe "requests/index", type: :view do
  before(:each) do
    assign(:requests, [
      Request.create!(
        :user => nil,
        :product => nil,
        :approved => false,
        :message => "MyText"
      ),
      Request.create!(
        :user => nil,
        :product => nil,
        :approved => false,
        :message => "MyText"
      )
    ])
  end

  it "renders a list of requests" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
