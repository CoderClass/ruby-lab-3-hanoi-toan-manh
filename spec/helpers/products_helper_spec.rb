require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProductsHelper. For example:
#
# describe ProductsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProductsHelper, type: :helper do
  describe "include text save over X" do
    it "if discount_amount less than 100K then no tex" do
      @product = Product.new price_vnd: 100000
      expect(product_discount_info(@product)).to eq ""

    end 
    it "if discount_amount more than 100K then return text" do
      @product = Product.new price_vnd: 1000000
      expect(product_discount_info(@product)).to eq "Save over 410000 VND" 
    end 
  end
end
