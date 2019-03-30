Rails.application.routes.draw do
  resources :referral_codes
  devise_for :users
  get '/', to: 'home#index'

  get '/redeem', to: 'public_access#redeem'

  namespace :api do
    namespace :v1 do
      resources :participants, only: [:index, :create, :destroy, :update]
    end
  end
end
