class CreateCarts < ActiveRecord::Migration[5.2]
  def change
    create_table :carts do |t|

    	t.belongs_to :user, index: true #reference à user
    	t.belongs_to :item, index: true #reference à un item, seulement 1 pour le moment, chgt à venir

      t.timestamps
    end
  end
end
