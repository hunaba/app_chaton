class OrdersController < ApplicationController
  before_action :authenticate_user!
  
  def add_item_to_order
    ord = Order.new
    ord.user = current_user
    ord.save
  end

  def index
    @orders = current_user.orders
  end

  def show

    #########
  end
  

  def create
    unless current_user.cart.items.length === 0
      o = Order.new
      o.cart_id = current_user.cart.id 
      o.save
      
      current_user.cart.items.each do |item|
        io = ItemOrder.new
        io.item_id = item.id
        io.order_id = o.id
        io.save
      end

      current_user.cart.item_carts.destroy_all

      redirect_to "/carts/#{current_user.id}"
    else
      flash[:alert] = "You must select one item !"
      redirect_to root_path
    end
  end

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end


  def destroy
  end
end