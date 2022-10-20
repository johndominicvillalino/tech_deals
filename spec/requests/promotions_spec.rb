require 'rails_helper'

RSpec.describe "Promotions", type: :request do

  describe "GET /promotions" do
    it "should get all promotions" do
      get promotions_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /promotions' do
    it "should create promo" do
      product = FactoryBot.create(:product)
      post promotions_path, params: {:promo_type => 'item', :product_id => product.id, :sku_free => [2,2], :min_value => 400.2, :min_quantity => 5 }
      expect(response).to have_http_status(:created)
    end
  end


  describe 'POST /promotions' do
    it "should not create if product already has a running promo" do
      product = FactoryBot.create(:product)
      post promotions_path, params: {:product_id => product.id,:sku_free => [2,2], :percent_discount => 12, :min_value => 400.2, :min_quantity => 10 }
      post promotions_path, params: {:product_id => product.id,:sku_free => [2,2], :percent_discount => 12, :min_value => 400.2, :min_quantity => 10 }
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end


  describe 'PATCH /promotions' do
    it "should update status of promo" do
      product = FactoryBot.create(:product)
      promo = FactoryBot.create(:promotion, product_id:product.id)
      patch promotions_path, params: {id:promo.id,is_active: !promo.is_active}
      expect(response).to have_http_status(:created)
    end
  end


  describe 'PATCH /promotions' do
    it "should update status of promo" do
      product = FactoryBot.create(:product)
      promo = FactoryBot.create(:promotion, product_id:product.id)
      patch promotions_path, params: {id:promo.id,is_active: !promo.is_active}
      expect(response).to have_http_status(:created)
    end
  end

  describe 'DELETE /promotions' do
    it "should delete a promo" do
      product = FactoryBot.create(:product)
      promo = FactoryBot.create(:promotion, product_id:product.id)
      delete promotions_path, params: {id:promo.id}
      expect(response).to have_http_status(:no_content)
    end
  end





end
