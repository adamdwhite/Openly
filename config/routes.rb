Rails.application.routes.draw do
  
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
  get 'user/:id', to: 'users#show'
  patch 'user/:id/edit', to: 'users#update'
  delete 'user/:id', to: 'users#destroy'
  
  # SESSIONS
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  # CLIENTS
  root 'clients#index'
  get '/client', to: 'clients#new'
  post '/client', to: 'clients#create'
  delete '/client', to: 'clients#destroy'

  # COUNSELORS
  root 'counselors#index'
  get '/counselor', to: 'counselors#new'
  post '/counselor', to: 'counselors#create'
  delete '/counselor', to: 'counselors#destroy'

  # CHATS "Talk" 
  root 'chats#index'
  get '/talk', to: 'chats#show'
  get '/talk', to: 'chats#new'
  post '/talk', to: 'chats#create'
 
  # MESSAGES 
  root 'messages#index'
  get '/message', to: 'messages#show'
  get '/message', to: 'messages#new'
  post '/message', to: 'messages#create'

end