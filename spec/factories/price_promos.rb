FactoryBot.define do
  factory :price_promo do
    promotion_id {1}
    sku_free {'C4'}
    min_value {50}
    min_quantity {5} 
  end
end
