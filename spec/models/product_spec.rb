require 'rails_helper'
RSpec.describe Product, type: :model do
  it "sort alphabetically" do
    @product1 = Product.create(name: 'Smartphone')
    @product2 = Product.create(name: 'Laptop')
    @product3 = Product.create(name: 'Tablet')
    expect(Product.alphabetical).to eq [@product2,@product1,@product3]
  end
end
