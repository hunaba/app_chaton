class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_item, dependent: :destroy
  has_many :items, through: :cart_item, dependent: :destroy
  has_many :orders, dependent: :destroy
end
