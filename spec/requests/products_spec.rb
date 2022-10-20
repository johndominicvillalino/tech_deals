require 'rails_helper'

RSpec.describe "Products", type: :request do

  describe "GET /products" do
    it "should return products" do
      get products_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /products" do
    it "should create a product" do
     post products_path, params: {:name => 'VGA', :price => 23.2}
      expect(response).to have_http_status(:created)
    end
  end
      
  describe "POST /products" do
    it "should not create product for missing input" do
     post products_path, params: {:name => nil, :price => nil}
      expect(response).to have_http_status(:unprocessable_entity)
    end
  end



end
