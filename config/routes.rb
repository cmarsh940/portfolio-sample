Rails.application.routes.draw do
  resources :categories

  resources :posts

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'about', to: "static_pages#about"
	get 'contact', to: "static_pages#contact"
	get 'live', to: "static_pages#live"

  root :to => 'home#index'

 
end
