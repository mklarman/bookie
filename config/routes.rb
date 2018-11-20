Rails.application.routes.draw do


resources :clients
resources :wagers
resources :matchups
resources :teams
resources :leagues
resources :league_clients
resources :league_wagers
resources :secrets
resources :players
resources :pools
resources :groups
resources :selections
resources :tickets

get "/users/sportsbook" => "welcome#show"

get "/users/ungraded" => "welcome#index"

get "users/test" => "welcome#test"

get "users/profile" => "welcome#users_show"










devise_for :users, :controllers => { :registrations => 'users/registrations' }
devise_scope :user do
  authenticated :user do
    root :to => "clients#index", as: :authenticated_root
  end
  unauthenticated :user do
    root :to => 'devise/registrations#new', as: :unauthenticated_root
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
