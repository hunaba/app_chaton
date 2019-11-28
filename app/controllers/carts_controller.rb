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
    puts params
    @cart = Cart.new(user_id: current_user.id, item_id: params[:format])        
    if @cart.save
          puts "Gossip Save"
          @items = Item.all #cart.item_id.title
          redirect_to '/'
        else
          render 'items/params[id]'
          puts "Raté"
        end
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
    current_user.cart.item_carts.destroy_all
    redirect_to root_path
  end
end