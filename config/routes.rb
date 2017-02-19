Rails.application.routes.draw do
  resources :videos
  devise_for :users
  resources :users
  get 'tags/:tag', to: 'videos#index', as: :tag
  root to: "videos#index"
end
