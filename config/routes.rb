Rails.application.routes.draw do
  
  get 'rooms/show'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users do
    resources :chats
  end
  resources :counselors
  resources :clients
  resources :sessions
  resources :account_activations
  resources :messages
  
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
  root 'clients#index'
  get '/client', to: 'clients#new'
  post '/client', to: 'clients#create'
  delete '/client', to: 'clients#destroy'

  root 'clients#index'
  get '/counselor', to: 'counselors#new'
  post '/counselor', to: 'counselors#create'
  delete '/counselor', to: 'counselors#destroy'

  # CHATS "Talks" and MESSAGES therein
  root 'chats#index'
  get '/chat', to: 'chats#show'
  get '/chat', to: 'chats#new'
  post '/chat', to: 'chats#create'
 
end