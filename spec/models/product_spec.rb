require 'rails_helper'

RSpec.describe Product, type: :model do
# On creation of a new hamper these fields must be filled
  it "requires title" do
    product = Product.create(title: nil)
    expect(product).to_not be_valid
  end

  it "requires collection" do
    product = Product.create(title: "test", collection: nil)
    expect(product).to_not be_valid
  end

  it "requires items" do
    product = Product.create(title: "test", collection: "test", items: nil)
    expect(product).to_not be_valid
  end

  it "requires contents" do
    product = Product.create(title: "test", collection: "test", items: "test", contents: nil)
    expect(product).to_not be_valid
  end

  it "requires description" do
    product = Product.create(title: "test", collection: "test", items: "test", contents: "test", description: nil)
    expect(product).to_not be_valid
  end

  it "requires cost" do
    product = Product.create(title: "test", collection: "test", items: "test", contents: "test", description: "test", cost: nil)
    expect(product).to_not be_valid
  end

# Attribute specifics
it "product cost can't have $ entered" do
  product = Product.create(title: "test", collection: "test", items: "test", contents: "test", description: "test", cost: '$5')
expect(product).to_not be_valid
end

end
