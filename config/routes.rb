Rails.application.routes.draw do
  resources :user_jogos
  get 'sessions/new'
  
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  resources :users
  resources :jogos
  resources :consoles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
