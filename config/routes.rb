Rails.application.routes.draw do

  root to: "dashboards#index"


  get "sign_up" => "users#new"
  resources :users

  get "sign_in" => "sessions#new"
  post "sign_in" => "sessions#create"
  delete "sign_out" => "sessions#destroy"

  get "characters/update_character_form", as: "update_character_form"
  resources :characters

  resources :ethercrafts
  resources :races
  resources :countries
  resources :regions
  resources :places


end
