class CartsController < ApplicationController
  
  def show
    @cart = Cart.find(params[:id])
    @total = 0
    @cart.items.each do |item|
      @total += item.price
    end
  end

  def new
  end

  def update
    if current_user

      unless current_user.cart.items.include?(Item.find(params[:id]))
        ic = ItemCart.new
        ic.cart_id = current_user.id
        ic.item_id = Item.find(params[:id]).id
        ic.save
        redirect_to '/'
        flash[:success] = "Item added"
      else
        redirect_to '/'
        flash[:alert] = "Item already added" 
      end

    else 
      redirect_to '/'
      flash[:alert] = "You must log in to add items" 
    end

  end

  def destroy
    current_user.cart.item_carts.destroy_all
    redirect_to root_path
  end
end