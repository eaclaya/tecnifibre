Rails.application.routes.draw do
  resources :ads
  resources :matches
  resources :participants
  resources :players
  resources :tours
  devise_for :users
  post "matches/filter", to: 'matches#filter'
  post "players/search-by-name", to: 'players#search_by_name'
  post "players/search-match-player", to: 'players#search_match_player'
  root "players#index"
end
