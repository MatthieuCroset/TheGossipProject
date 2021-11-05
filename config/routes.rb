Rails.application.routes.draw do
  
  #get '/team', to: 'static#team'
  #get '/contact', to: 'static#contact'
  resources :teams
  resources :contacts
   resources :gossips
   resources :cities
   resources :users
   resources :sessions, only: [:new, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

