require 'resque/server'
Rails.application.routes.draw do
  #resources :users
  #get 'landing_page/show'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'landing_page#show'
  #root 'monologue/posts#index'
  post 'message' => 'users#create'

  mount Resque::Server.new, at: "/resque"

  mount Monologue::Engine, at: '/blog'
  #mount Monologue::Engine, at: '/'
end
