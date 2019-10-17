Rails.application.routes.draw do
  resources :dogs do 
    collection do
  get "/sorted", to: "dogs#sorted", as: "sorted"
    end 
  end 


  resources :employees


  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
