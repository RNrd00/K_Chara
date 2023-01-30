class CreateCharaComments < ActiveRecord::Migration[6.1]
  def change
    create_table :chara_comments do |t|
      t.text :comment
      t.integer :customer_id
      t.integer :chara_id
      t.float :rate
      
      t.timestamps
    end
  end
end
