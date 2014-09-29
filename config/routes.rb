Rails.application.routes.draw do
  devise_for :users
  resources :shows do
    resources :reviews do
      resources :comments
    end
  end

  resources :reviews do
    member do
      post "upvote", to: "votes#upvote"
      post "downvote", to: "votes#downvote"
    end
  end

  namespace :admin do
    resources :users
    resources :shows
    resources :reviews
  end

  root "welcome#index"
end
