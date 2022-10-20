class Product < ApplicationRecord
  include ActiveModel::Serializers::JSON
  has_one :promotion
  has_many :item_promo, through: :promotions
  has_many :price_promo, through: :promotions
end
