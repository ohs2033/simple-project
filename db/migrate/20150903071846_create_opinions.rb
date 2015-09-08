class CreateOpinions < ActiveRecord::Migration
  def change
    create_table :opinions do |t|
      
      
      t.integer :post_id
      t.integer :user_id
      
      t.integer :general
      t.integer :money
      t.integer :service
      
      t.integer :cut 
      t.integer :perm
      t.integer :dye
      
      t.text :op
      
      t.boolean :want, default: false
      
      t.integer :likenumber, default: 0
      

      t.timestamps null: false
    end
  end
end
