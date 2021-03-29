Rails.application.routes.draw do
  resources :pieces
  resources :museums
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
