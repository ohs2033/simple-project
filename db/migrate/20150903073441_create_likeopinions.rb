class CreateLikeopinions < ActiveRecord::Migration
  def change
    create_table :likeopinions do |t|
      t.integer :user_id
      t.integer :opinion_id
      t.boolean :likeop, default: false
      t.timestamps null: false
    end
  end
end
