class ProductsController < ApplicationController

  def get_products
    @products = Product.all
    render json: @products.as_json(include: {promotion: {include: [:item_promo, :price_promo] } } )
  end

end
