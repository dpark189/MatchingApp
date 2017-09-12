Rails.application.routes.draw do
  root 'homes#index'
  
  devise_for :users
  root 'static_pages#index'
end
