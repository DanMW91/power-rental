Rails.application.routes.draw do
  devise_for :users

  root to: 'powers#index'
  resources :powers do
    resources :bookings, except: [:index, :show, :update, :edit]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/my_powers', to: 'powers#my_powers'
  get '/my_bookings', to: 'bookings#index'
  get '/my_bookings/:id', to: 'bookings#show'
  resources :bookings, only: [:index, :show, :update]
end
