module ProductsHelper
  def product_discount_info(product)
    if product.discount_amount > 100000 
      "Save over #{product.discount_amount.round} VND" 
    else
      ""
    end
  end 
end
