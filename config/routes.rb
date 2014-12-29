Rails.application.routes.draw do

  root "characters#index"
  get "characters/update_character_form", as: "update_character_form"

  resources :characters
  resources :ethercrafts
  resources :races
  resources :countries
  resources :regions
end
