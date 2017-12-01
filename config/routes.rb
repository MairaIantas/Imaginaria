Rails.application.routes.draw do
  devise_for :customers
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # get 'categories/show'
  get '/about', to: 'about#about', as: 'about'
  get '/contact', to: 'contact#contact', as: 'contact'
  get '/customers', to: 'customers#show', as: 'customer_show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  resources :products, only: [:index, :show]
  resources :categories, only: [:show]
  resources :items
  resource :carts, only: [:show]
  resources :charges, only: [:new, :create]
  resources :customers, only: [:show]
end
