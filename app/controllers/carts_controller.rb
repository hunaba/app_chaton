class CartsController < ApplicationController

  #le user_id de ce cart ; mettre un current_user.cart


  def show
    @cart = Cart.where(user_id:params[:id])
    @total = 0
    @cart.each do |one_cart|
      @total += Item.find(one_cart.item_id).price
    end
    @items = Item.all
  end

  def create
  end

  def paiement
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
    puts params
    @cart = Cart.find(params[:id])
    @id = params[:id]
    @item = @cart.item_id
    @prix = Item.find(@item).price


    @carts = Cart.where(user_id:current_user.id)
    @total = 0
    @carts.each do |one_cart|
      if Item.find(one_cart.item_id).price == @prix
        @total += 0
      else
        @total += Item.find(one_cart.item_id).price
      end
    end



    @cart.delete
    respond_to do |format|
      format.html { redirect_to cart_path(current_user.id) }
      format.js { }
      flash[:notice] = "Task destroyed"
    end
  end
end