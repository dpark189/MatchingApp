Rails.application.routes.draw do
  root 'static_pages#index'

  devise_for :users
  devise_scope :user do
    root to: "devise/sessions#new"
  end
  resources :users
  resources :listings do
    get :autocomplete_matchitem_name, :on => :collection
  end

end
