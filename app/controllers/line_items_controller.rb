class LineItemsController < ApplicationController

	def create
  	@cart = current_cart
    product = Product.find(params[:product_id])
    @line_item = @cart.add_product(product.id)
    session[:counter] = 0

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to(store_url) }
        format.js { @current_item = @line_item }
      else
        format.html { render :new }
      end
    end

	end

  def destroy
    @line_item = LineItem.find(params[:id])
    @line_item.destroy
    
    respond_to do |format|
      format.html { redirect_to current_cart }
      format.js
    end
  end


end
