Rails.application.routes.draw do
  resources :positions
  resources :organizations

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'register', to: 'users/registrations#new'
  end

  get '/', to: 'home#index', as: :root
  get '/about', to: 'public_access#about', as: :about

  resources :participants, only: [:create, :update]
  get '/profile', to: 'participants#show'
  get '/profile/new', to: 'participants#new'
  get '/profile/edit', to: 'participants#edit'
  get '/profile/:id', to: 'participants#show'
  get '/welcome', to: 'users#welcome'

  resources :listings
  resources :home, only: [:index]
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
