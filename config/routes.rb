Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'home#index'

  namespace :api do
    namespace :v1 do
     resources :participants, only: [:index, :create, :destroy, :update]
    end
  end
end
