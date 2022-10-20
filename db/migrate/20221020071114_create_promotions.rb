class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :promo_type
      t.string :description
      t.references :product, foreign_key: true
      t.boolean :is_active, default: true

      t.string :sku_free, array: true, default: []
      t.float :percent_discount
      t.float :min_value
      t.integer :min_quantity


      t.timestamps
    end
  end
end
