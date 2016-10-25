class VisitorsController < ApplicationController
  def index
    if params[:sort] != 'alphabetical'
      @products = Product.all
    else
      @products = Product.alphabetical
    end
  end
end
