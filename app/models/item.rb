class Item < ActiveRecord::Base
	validates :title, presence:true
	validates :price, presence:true
	validates :image_url, presence:true 

	has_and_belongs_to_many :cart
end