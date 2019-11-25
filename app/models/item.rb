class Item < ActiveRecord::Base
	validates :title, presence:true
	validates :price, presence:true
	validates :image_url, presence:true 

	has_many :carts
end