Rails.application.routes.draw do
  resources :referral_codes
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  devise_scope :user do
    get 'register', to: 'users/registrations#new'
  end

  get '/', to: 'home#index'
  resources :participants, only: [:new, :create, :show]

  resources :listings
  # offering/wish/call_to_action are for url_helpers with STI
  resources :offerings, controller: 'listings', path: '/listings'
  resources :wish, controller: 'listings', path: '/listings'
  resources :call_to_action, controller: 'listings', path: '/listings'

  get '/redeem', to: 'public_access#redeem'
  post '/redeem', to: 'public_access#redeem'

  namespace :api do
    namespace :v1 do
      resources :participants, only: [:index, :create, :destroy, :update]
    end
  end
end
