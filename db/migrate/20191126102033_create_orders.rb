class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    	create_table :orders do |t|

    	t.belongs_to :user, index: true #reference à user
    	t.belongs_to :item, index: true 
      	t.timestamps
    end
  end
end
