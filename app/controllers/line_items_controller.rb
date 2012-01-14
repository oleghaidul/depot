class LineItemsController < ApplicationController

	def create
		@cart = current_cart
		product = Product.find(params[:product_id])
		@line_item = @cart.add_product(product.id)

		session[:counter] = 0
		if @line_item.save
			redirect_to @line_item.cart
		else
			render :new
		end
	end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    redirect_to current_cart
  end


end
