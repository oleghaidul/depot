class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	 def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
  end

  def update
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
  end

end
