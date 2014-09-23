Rails.application.routes.draw do
  devise_for :users
  resources :shows do
    resources :reviews
  end
  root "welcome#index"
end
