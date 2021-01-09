Rails.application.routes.draw do
  root :to => "pages#landing"
  get 'r/two_players/:id', to: 'pages#record_two', as: :r2
  get 'r/three_players/:id', to: 'pages#record_three', as: :r3
  get 'r/four_players/:id', to: 'pages#record_four', as: :r4
  resources :players, only:[:index, :new, :create]
  resources :games, only:[:index, :show, :new, :create]
  resources :participations, only:[:index, :show, :new, :create]
end
