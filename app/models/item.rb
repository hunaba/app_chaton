class Item < ActiveRecord::Base
	validates :title, presence:true
	validates :price, presence:true
	validates :image_url, presence:true 

	has_many :carts
	#et pourquoi pas => has_and_belongs_to_many :cart ???
	#A has_and_belongs_to_many association creates a direct many-to-many connection with another model, with no intervening model.
	has_many :join_items_order
  
	has_many :orders, through: :join_items_order

end