class Order < ApplicationRecord

	belongs_to :user
	has_many :join_items_order
	has_many :items, through: :join_items_order
end
