Rails.application.routes.draw do

  root to: "dashboards#index"

  get "characters/update_character_form", as: "update_character_form"

  resources :characters
  resources :ethercrafts
  resources :races
  resources :countries
  resources :regions
  resources :places

end
