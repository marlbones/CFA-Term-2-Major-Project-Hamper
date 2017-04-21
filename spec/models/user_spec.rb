require 'rails_helper'

RSpec.describe User, type: :model do

  it "user is valid" do
    user = build(:user)
    expect(user).to be_valid
    # require 'pry'; binding.pry
  end

  it "can't be created without a password" do
    user = build(:user, :password => nil)
    expect(user).to_not be_valid
  end
end
