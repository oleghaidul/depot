class ProductsController < InheritedResources::Base

	def who_bought
    @product = Product.find(params[:id])
    respond_to do |format|
    format.atom
    format.xml { render :xml => @product }
    end
  end


end
