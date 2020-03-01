Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # root "pages#home", page: "home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'pages/how_to_play', to: 'pages#how_to', as: :how_to_play
  get 'pages/dashboard', to: 'pages#dashboard', as: :dashboard
  resources :games, only: %i[create] do
    resources :rounds, only: %i[create]
  end

  get 'games/:id/score', to: 'games#score', as: :game_score
  get 'games/:id/game', to: 'games#game', as: :game
  get 'games/:id/mcq', to: 'games#mcq', as: :mcq
  get 'games/:id/slide', to: 'games#slide', as: :slide
end
