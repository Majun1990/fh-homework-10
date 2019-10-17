Rails.application.routes.draw do
  namespace :api do
    resources :players
    resources :games
    resources :teams
  end

  root to: 'api/players#index'
end
