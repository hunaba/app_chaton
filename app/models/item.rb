class Item < ActiveRecord::Base
	validates :title, presence:true
	validates :price, presence:true
	validates :image_url, presence:true 

	has_many :cart_items
	has_many :items, through: :cart_item

	#=> has_and_belongs_to_many :cart ==> ne permet pas de visibilité, de personnalisation, eviter de l'utiliser
	#A has_and_belongs_to_many association creates a direct many-to-many connection with another model, with no intervening model.
	has_many :join_items_order
  
	has_many :orders, through: :join_items_order

end