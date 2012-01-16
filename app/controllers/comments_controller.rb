class CommentsController < ApplicationController
  before_filter :load_product
  def index
    @comments = @product.comments  
    @comment = @product.comments.build(:parent_id => params[:parent_id])
  end

  def load_product
    @product = Product.find(params[:product_id])
  end

  def new
    @comment = @product.comments.build(:parent_id => params[:parent_id])
  end

  def create
    @comment = @product.comments.build(params[:comment])
    if @comment.save
      redirect_to product_comments_path(@product), :notice => 'Comments added.'
    else
      render :new
    end
  end

end
