Rails.application.routes.draw do
  devise_for :users
  root to: 'powers#index'
  resources :powers, only: [:show, :new, :edit, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
