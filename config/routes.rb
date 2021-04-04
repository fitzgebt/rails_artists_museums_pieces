Rails.application.routes.draw do
  # resources :pieces
  # resources :museums
  # resources :artists
  get '/museums/open', to: 'museums#open'
  match '/auth/:provider/callback', to: 'session#github_login', via: [:get, :post]
  resources :artists, except: [:index, :destroy] do
    resources :pieces, only: [:show, :index]
  end
  resources :museums, except: [:edit, :update, :destroy] do
    resources :pieces, only: [:show, :index, :new, :create]
  end
  resources :pieces, only: [:edit, :update, :destroy]
  root 'static#home'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
