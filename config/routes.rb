Rails.application.routes.draw do
  get '/welcome/:id', to: 'welcome#firstname'
   
   get '/team', to: 'static#index'
   get '/contact', to: 'static#index_contact'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

