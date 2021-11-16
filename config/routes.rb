Rails.application.routes.draw do
  devise_for :users
  root to: 'powers#index'
  resources :powers do
    resources :bookings
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/my_powers', to: 'powers#my_powers'

end
