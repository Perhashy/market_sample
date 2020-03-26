class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :explain,null: false
      t.integer :price, null: false
      t.references :category, null: false
      t.integer :brand_id
      t.references :condition, null: false
      t.references :deliveryday, null: false
      t.references :prefecture, null: false
      t.references :burden, null:false
      t.timestamps
    end
  end
end
