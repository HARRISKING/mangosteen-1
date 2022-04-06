Rails.application.routes.draw do
  get 'validation_codes/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      # api/v1

      resources :records
      resources :validte_codes, only: [:create]
      resources :session, only: [:create,:destroy]
      resources :me, only: [:show]
      resources :items
      resources :tags
    end
  end
end