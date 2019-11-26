class CreateJoinItemsOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :join_items_orders do |t|

    	t.belongs_to :item, index: true #reference à item
    	t.belongs_to :order, index: true #reference à order

      t.timestamps
    end
  end
end
