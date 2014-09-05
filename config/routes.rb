Rails.application.routes.draw do

  root "characters#index"

  resources :characters, only: [:index, :show, :new, :create, :edit, :update]
  resources :ethercrafts, only: [:index, :new, :create, :edit, :update, :destroy]
end
