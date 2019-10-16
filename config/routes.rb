Rails.application.routes.draw do
  resources :games
  resources :teams
  namespace :api do
    resources :players
  end

  root to: 'api/players#index'
end
