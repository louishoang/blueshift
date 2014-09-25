Rails.application.routes.draw do
  devise_for :users
  resources :shows do
    resources :reviews
  end

  namespace :admin do
    resources :users
    resources :shows
    resources :reviews
  end

  root "welcome#index"
end
