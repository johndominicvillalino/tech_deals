class ProductsController < ApplicationController

  before_action :product_params, only: [:create_product]

  def get_products
    @products = Product.all
    render json: @products.as_json(
      include: :promotion
      )
  end

  def create_product 
    @product = Product.new(product_params)
    if @product.save
      render json: @product, status: :created
    else
      render json: @product.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def product_params
    params.permit(:name, :price)
  end

end
