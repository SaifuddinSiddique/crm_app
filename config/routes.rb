Rails.application.routes.draw do
  resources :models
  resources :reports do
    member { get :download_csv }
  end
  resources :opportunities
  resources :accounts
  resources :contacts
  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Define a separate root for standard users
  authenticated :user do
    root to: "homes#index", as: :user_root
  end

  # Default root for guests (not signed in)
  root to: "homes#index"
end
