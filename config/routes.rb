Rails.application.routes.draw do
  get 'home', to: 'static#home'
  get '/inventory/:id', to: 'products#inventory'
  get '/description/:id', to: 'products#description'
  resources :orders, :invoices, :products
end
