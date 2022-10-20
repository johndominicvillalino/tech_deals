FactoryBot.define do
  factory :item_promo do
    promotion_id {1}
    sku_free {[1]}
    min_value {50}
    min_quantity {5} 
  end
end
