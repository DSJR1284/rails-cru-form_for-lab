Rails.application.routes.draw do

  resources :artists 

  resources :songs 

  resources :genres 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
