Rails.application.routes.draw do
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'static_pages#index'
  post '/contact', to: 'static_pages#contact'
  resource :subscriptions do
  end
end
