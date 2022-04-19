Rails.application.routes.draw do
  devise_for :admins
  devise_for :end_users
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  get "homes/about" => 'homes#about', as: "about"
  
  namespace :admin do
    resources :products
    resources :genres, only:[:index,:create,:edit,:update]
    resources :end_users, only:[:index,:show,:edit,:update]
    resources :orders, only:[:index,:show,:update]
    resources :order_details, only:[:update]
  end
  
  namespace :public do
    resources :products, only:[:index,:show]
    resources :in_cart_products, only:[:index,:create,:update,:destroy]
    resources :orders, only:[:new,:create,:index,:show]
    resources :end_users, only:[:show,:edit,:update]
    resources :addresses, only:[:index,:create,:edit,:update,:destroy]
  end
end
