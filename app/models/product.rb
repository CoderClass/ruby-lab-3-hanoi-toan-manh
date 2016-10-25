class Product < ActiveRecord::Base
  def self.alphabetical
    order('name')
  end
end
