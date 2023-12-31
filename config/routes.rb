Rails.application.routes.draw do
  get 'star_quotes/index'
  get 'search/index'
  resources :quote_types
  resources :dashboard
  resources :homies do
    resources :quotes
  end
  resources :star_quotes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get 'search', :to => "search#index"

  # Defines the root path route ("/")
  # root "posts#index"
  root "dashboard#index"
end
