class TableItem < ActiveRecord::Migration[5.2]
  def change
  	create_table :item do |t|
  	 t.string :title
  	 t.text :description
  	 t.decimal :price
  	 t.string :image_url
  	end
  end
end

#Mercredi, nous te demanderons d'installer 
#un outil qui gère les images en production. 
#Pour le moment, l'image de l'item sera un string 
#qui redirigera vers une url directe d'une image. 
#Pour l'appeler, tu pourras faire : 
