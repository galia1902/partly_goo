Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'pages/menu', to: 'pages#menu', as: :page_menu
  resources :games, only: %i[create] do
    resources :round, only: %i[create show]
  end

  get 'games/:id/score', to: 'games#score', as: :game_score
  get 'games/:id/game', to: 'games#game', as: :game
end
