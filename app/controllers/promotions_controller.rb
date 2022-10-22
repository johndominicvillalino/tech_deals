class PromotionsController < ApplicationController

    before_action :promo_params, only: [:create_promotions, :deactivate_promo, :delete_promo]

    def get_promotions
        @promotions = Promotion.all
        render json: @promotions
    end

    def create_promotions
        @promo = Promotion.new promo_params
        if @promo.save 
            render json: @promo, status: :created
        else
            render json: @promo.errors.full_messages, status: :unprocessable_entity
        end
    end

    def deactivate_promo
        @promotion = Promotion.find(promo_params[:id])
        @promotion.is_active = promo_params[:is_active]

        if @promotion.save 
         render json: @promotion, status: :created
        else
         render json: @promotion.errors.full_messages, status: :unprocessable_entity
        end
        
    end


    def delete_promo
         if Promotion.exists?(id:promo_params[:id])
            @promotion = Promotion.find(promo_params[:id])
            @promotion.destroy
                render json: @promotion, status: :no_content
            else
                render json: @promotion.errors.full_messages, status: :unprocessable_entity
            end
    end




    private
    def promo_params 
        params.permit(:promo_type, :product_id, :sku_free, :min_value, :min_quantity, :description,:percent_discount, :is_active, :id )
    end
        
end
