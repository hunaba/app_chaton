class Item < ActiveRecord::Base
	validates :title, presence:true
	validates :price, presence:true
	validates :image_url, presence:true 

	has_many :carts

	has_many :join_items_order
  
	has_many :orders, through: :join_items_order

end