Rails.application.routes.draw do
  resources :pieces
  resources :museums
  # resources :artists
  resources :artists do
    resources :piecesg, only: [:show, :index]
  end
  root 'static#home'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
