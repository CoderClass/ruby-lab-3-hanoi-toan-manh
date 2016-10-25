require 'rails_helper'
RSpec.describe Product, type: :model do
  it "sort alphabetically" do
    @product1 = Product.create(name: 'Smartphone')
    @product2 = Product.create(name: 'Laptop')
    @product3 = Product.create(name: 'Tablet')
    expect(Product.alphabetical).to eq [@product2,@product1,@product3]
  end

  describe "On Sale" do

    describe "Discount amount" do
      it "Cost more than 100K VND should discount 21%" do
        @product = Product.create! price_vnd: 120000
        expect(@product.discount_amount).to eq 25200 
      end

      it "Cost more than 200K VND should discount 31%" do
        @product = Product.create! price_vnd: 220000
        expect(@product.discount_amount).to eq  68200
      end
      it "Cost more than 800K VND should discount 41%" do
        @product = Product.create! price_vnd: 820000
        expect(@product.discount_amount).to eq 336200 
      end
      it "Cost less than 100K VND should discount 0%" do
        @product = Product.create! price_vnd: 20000
        expect(@product.discount_amount).to eq 0
      end
    end

    describe "Finale price should round to 10K" do

      it "Cost 115K after discount, final price shoud be 120K" do
        @product = Product.create! price_vnd: 146000
        expect(@product.final_price).to eq 120000
      end
      it "Cost 114K after discount, final price shoud be 110K" do
        @product = Product.create! price_vnd: 144000
        expect(@product.final_price).to eq 110000
      end

    end
  end

end
