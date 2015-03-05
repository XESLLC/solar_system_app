Rails.application.routes.draw do
  root 'welcome#index'

  get '/' => 'welcome#index'
  post '/' => 'welcome#create'
  get '/signout' => 'welcome#destroy'
  get  'signup' => 'registrations#new'
  post '/signup' => 'registrations#create'

  resources :solar_systems
  resources :planets


end
