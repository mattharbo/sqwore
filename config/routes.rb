Rails.application.routes.draw do
  root :to => "pages#landing"
  resources :players, only:[:index]
  resources :games, only:[:index, :show, :new, :create]
end
