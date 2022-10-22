class Product < ApplicationRecord
  include ActiveModel::Serializers::JSON

  before_save :format_name
  after_save :set_sku 

  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { other_than: 0 }


  has_one :promotion, dependent: :destroy
  has_one :item_promo, through: :promotions


  def format_name
    self.name = name.capitalize
  end

  def set_sku
    self.update_column(:sku, "#{name[0]}#{id}")
  end

end
