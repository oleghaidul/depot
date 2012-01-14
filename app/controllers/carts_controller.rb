class CartsController < ApplicationController
	def show
		begin
			@cart = Cart.find(params[:id])
		rescue
			logger.error "Attempt to access invalid cart #{params[:id]}"
      redirect_to store_url, :notice => 'Invalid cart'
		end
	end

  def destroy
    current_cart.destroy
    session[:cart_id] = nil

    respond_to do |format|
      format.html { redirect_to store_url }
      format.js
    end
  end


end
