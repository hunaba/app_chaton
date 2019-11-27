class Order < ApplicationRecord

	belongs_to :user
	has_many :join_items_order
	has_many :items, through: :join_items_order
	
	before_save :update_total
 	before_create :update_status

	  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def update_status
    if self.status == nil?
      self.status = "In progress"
    end
  end

  def update_total
    self.total_price = calculate_total
  end
end
end
