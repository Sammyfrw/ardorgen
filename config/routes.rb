Rails.application.routes.draw do

  root "characters#index"

  resources :characters
  resources :ethercrafts
  resources :races
  resources :countries
  resources :regions
end
