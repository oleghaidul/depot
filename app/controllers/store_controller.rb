class StoreController < ApplicationController
	before_filter :counter
  def index
  	@products = Product.all
  	@cart = current_cart
  end

  def counter
  	session[:counter] = session[:counter].is_a?(Fixnum) ? session[:counter] + 1 : 0
  end

end
