class Cart < ApplicationRecord

  belongs_to :user

  belongs_to :items
  #has_and_belongs_to_many :items

end
