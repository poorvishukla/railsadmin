Rails.application.routes.draw do
  default_url_options :host => "app-activeadmin.herokuapp.com"
 
  devise_for :users
  root 'homes#index'
  resources :homes
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
