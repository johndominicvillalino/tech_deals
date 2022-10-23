class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :promo_type
      t.string :description
      t.references :product, foreign_key: true
      t.float :percent_discount
      t.float :min_value
      t.integer :min_quantity
      t.string :trigger
      t.float :specific_discount_amount 
      t.string :free_item
      t.boolean :is_active, default: true
      t.float :min_value_cart
      t.timestamps
    end
  end
end
