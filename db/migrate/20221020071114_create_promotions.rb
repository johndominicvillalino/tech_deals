class CreatePromotions < ActiveRecord::Migration[7.0]
  def change
    create_table :promotions do |t|
      t.string :promo_type
      t.string :description
      t.references :product, foreign_key: true
      t.timestamps
    end
  end
end
