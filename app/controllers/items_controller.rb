class ItemsController < ApplicationController
def show
	@items = Item.all 
end
end
