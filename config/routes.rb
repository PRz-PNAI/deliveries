Rails.application.routes.draw do
  resources :client_details, only: [ :edit, :update ]
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
