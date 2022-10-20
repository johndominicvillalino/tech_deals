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



end
