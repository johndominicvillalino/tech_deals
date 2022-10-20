class CreatePricePromos < ActiveRecord::Migration[7.0]
  def change
    create_table :price_promos do |t|
      t.float :percent_discount
      t.references :promotion, null: false, foreign_key: true
      t.float :min_value
      t.integer :min_quantity

      t.timestamps
    end
  end
end
