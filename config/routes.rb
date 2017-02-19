Rails.application.routes.draw do
  resources :videos
  devise_for :users
  resources :users
  root to: "videos#index"
end
