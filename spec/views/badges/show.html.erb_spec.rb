require 'rails_helper'

RSpec.describe "badges/show", type: :view do
  before(:each) do
    @badge = assign(:badge, Badge.create!(
      :user => nil,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Name/)
  end
end
