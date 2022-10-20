FactoryBot.define do
  factory :promotion do
    promo_type {'item'}
    product_id {1}
    description {'test'}
    min_value {12}
    min_quantity {1}
  end
end
