Rails.application.routes.draw do
  get 'products', to:'products#get_products'  
  post 'products', to:'products#create_product'


  # Defines the root path route ("/")
  # root "articles#index"
end
