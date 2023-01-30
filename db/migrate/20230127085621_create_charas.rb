class CreateCharas < ActiveRecord::Migration[6.1]
  def change
    create_table :charas do |t|
      t.string :name, null:false
      t.string :creation, null:false
      t.references :customer, null:false, foreign_key: {to_table: :customers}
      t.float :rate
      t.string :delete_key, null:false

      t.timestamps
    end
  end
end
