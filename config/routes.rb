Rails.application.routes.draw do
  resources :ads
  resources :matches
  resources :participants
  resources :players
  resources :tours
  devise_for :users
  post "players/search-by-name", to: 'players#search_by_name'
  root "players#index"
end
