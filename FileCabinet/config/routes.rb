Rails.application.routes.draw do
  
  get 'welcome/index'

  root 'welcome#index'
  
  resources :docs
  authenticated :user do
    root "docs#index", as: "authenticated_root"
  end
  devise_for :users
end
