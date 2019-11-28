class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item
 #table de liaison donc singulier
end
