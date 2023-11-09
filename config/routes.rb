Rails.application.routes.draw do
  get 'sessions/new'
  
  resources :users
  resources :static_pages
  resources :session  
  
  root 'static_pages#home'
  
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/home', to: 'static_pages#home '
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  post '/login',to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
