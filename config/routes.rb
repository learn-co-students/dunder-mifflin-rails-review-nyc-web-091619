Rails.application.routes.draw do
  resources :dogs do
    collection do
      get :most_employees
    end
  end
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
