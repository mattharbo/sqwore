Rails.application.routes.draw do
  root :to => "pages#landing"
  resources :players, only:[:index, :new, :create]
  resources :games, only:[:index, :show, :new, :create]
  resources :participations, only:[:index, :show, :new, :create]
end
