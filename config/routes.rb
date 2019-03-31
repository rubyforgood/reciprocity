Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'register', to: 'users/registrations#new'
  end

  get '/', to: 'home#index'
  resources :participants, only: [:create, :update]
  get '/profile', to: 'participants#show'
  get '/profile/edit', to: 'participants#edit'

  resources :listings
  # offering/wish/call_to_action are for url_helpers with STI
  resources :offerings, controller: 'listings', path: '/listings'
  resources :wish, controller: 'listings', path: '/listings'
  resources :call_to_action, controller: 'listings', path: '/listings'

  namespace :api do
    namespace :v1 do
      resources :referral_codes
      resources :participants, only: [:index, :create, :destroy, :update]
    end
  end
end
