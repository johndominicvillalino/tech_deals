class Promotion < ApplicationRecord
  belongs_to :product
  has_one :item_promo, dependent: :destroy
  has_one :price_promo, dependent: :destroy
end
