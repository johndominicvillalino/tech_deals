Rails.application.routes.draw do
  get 'products', to:'products#get_products'  
  post 'products', to:'products#create_product'
  get 'promotions', to:'promotions#get_promotions'
  post 'promotions', to:'promotions#create_promotions'


  # Defines the root path route ("/")
  # root "articles#index"
end
