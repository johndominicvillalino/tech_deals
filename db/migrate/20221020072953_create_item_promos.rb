class CreateItemPromos < ActiveRecord::Migration[7.0]
  def change
    create_table :item_promos do |t|
      t.string :sku_free, array: true, default: []
      t.references :promotion, null: false, foreign_key: true
      t.float :min_value
      t.integer :min_quantity

      t.timestamps
    end
  end
end
