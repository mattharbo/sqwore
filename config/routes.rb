Rails.application.routes.draw do
  root :to => "pages#landing"
  resources :players, only:[:index]
end
