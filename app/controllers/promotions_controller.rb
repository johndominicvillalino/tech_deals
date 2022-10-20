class PromotionsController < ApplicationController

    before_action :promo_params, only: [:create_promotions]

    def get_promotions
        @promotions = Promotion.all
        render json: @promotions
    end

    def create_promotions
        @promo = Promotion.new 
        @promo.promo_type = promo_params[:promo_type]
        @promo.description = promo_params[:description]
        @promo.product_id = promo_params[:product_id]

        if @promo.save
            render json: @promo, status: :created
        else
            render json: @promo.errors.full_messages, status: :unprocessable_entity
        end

    end

    private
    def promo_params 
        params.permit(:promo_type, :product_id, :sku_free, :min_value, :min_quantity, :description )
    end
        
end
