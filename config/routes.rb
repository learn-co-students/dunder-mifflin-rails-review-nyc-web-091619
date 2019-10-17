Rails.application.routes.draw do
  resources :dogs
  resources :employees


  # get '/blah', 'somecontroller#method'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
