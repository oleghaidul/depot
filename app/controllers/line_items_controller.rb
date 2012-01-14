class LineItemsController < ApplicationController

	def create
		@cart = current_cart
		product = Product.find(params[:product_id])
		@line_item = @cart.line_items.build(:product => product)
		session[:counter] = 0
		if @line_item.save
			redirect_to(@line_item.cart, :notice => 'Line item was successfully created.')
		else
			render :new
		end
	end


end
