class OrdersController < ApplicationController
  
    def index
      @orders = Order.order('created_at desc').page params[:page]
    end


  def new
    @cart = current_cart
    if @cart.line_items.empty?
      redirect_to store_url, :notice => "Your cart is empty"
      return
    end
    @order = Order.new
  end

  def create
    @order = Order.new(params[:order])
    @order.add_line_items_from_cart(current_cart)

    if @order.save
      Cart.destroy(session[:cart_id])
      session[:cart_id] = nil
      Notifier.order_received(@order).deliver
      redirect_to store_url, :notice => 'Thank you for your order.'
    else
      render :new
    end
  end

end