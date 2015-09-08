class CreatePosts < ActiveRecord::Migration
  
  
  
  def change
    create_table :posts do |t|
      
      t.string :name
      t.string :img1
      t.string :img2
      t.string :address
      t.string :phone
      t.text :price
      t.integer :star, default: 0
      

      t.timestamps null: false
    end
  end
end
