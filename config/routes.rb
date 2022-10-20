Rails.application.routes.draw do
  get 'products', to:'products#get_products'  


  # Defines the root path route ("/")
  # root "articles#index"
end
