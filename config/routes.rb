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

  get '/redeem', to: 'public_access#redeem'
  post '/redeem', to: 'public_access#redeem'

  namespace :api do
    namespace :v1 do
      get '/referral_code/validate', to: 'referral_code#validate'
      resources :participants, only: [:index, :create, :destroy, :update]
    end
  end
end
