Rails.application.routes.draw do
  resources :dogs do
    collection do
      get 'sort' 
    end
  end
  resources :employees

  # get '/dogs/sort', to: 'dogs#sort', as: 'sort'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
