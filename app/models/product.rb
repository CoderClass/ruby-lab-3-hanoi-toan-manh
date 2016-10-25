class Product < ActiveRecord::Base
  def self.alphabetical
    order('name')
  end

  def discount_amount
    case
    when price_vnd > 800000
      price_vnd * 0.41
    when price_vnd > 200000
      price_vnd * 0.31
    when price_vnd > 100000
      price_vnd * 0.21
    else
      0
    end
  end 

  def final_price
    (price_vnd - discount_amount).round(-4)
  end
end
