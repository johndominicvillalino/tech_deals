class Promotion < ApplicationRecord
  belongs_to :product
  has_many :item_promo
  has_many :price_promo
end
