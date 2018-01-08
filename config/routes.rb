Rails.application.routes.draw do
  get 'rooms/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users
  resources :counselors
  resources :clients
  resources :sessions
  resources :account_activations, only: [:edit]

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'
  
  # STATIC PAGES 
  root 'static_pages#home'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  
  # USERS 
  get  '/signup',  to: 'users#new'
  post  '/signup',  to: 'users#create'
  
  # SESSIONS
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # ACCOUNTS / REGISTRATIONS
  get '/client', to: 'clients#new'
  post '/client', to: 'clients#create'

  get '/counselor', to: 'counselors#new'
  post '/counselor', to: 'counselors#create'

  # ROOMS "Talks" and MESSAGES therein
  

end
  