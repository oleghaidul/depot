class ProductsController < ApplicationController

	def index
		@products = Product.all
	end

	def show
		@product = Product.find(params[:id])
	end

	def new
		@product = Product.new
	end

	 def edit
    @product = Product.find(params[:id])
  end

  def create
    @product = Product.new(params[:product])
 
    if @product.save
      redirect_to(@product, :notice => 'Product was successfully created.')
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
 
    if @product.update_attributes(params[:product])
      redirect_to(@product, :notice => 'Product was successfully updated.')
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  def who_bought
    @product = Product.find(params[:id])
    respond_to do |format|
    format.atom
    format.xml { render :xml => @product }
    end
  end


end
