Rails.application.routes.draw do
  devise_for :users
  resources :shows do
    resources :reviews do
      resources :comments
    end
  end
  root "welcome#index"
end
