Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :routes, only: [:index, :new, :edit, :create]
  resources :routes

  get 'root/result' => 'root#result'

  root to: 'root#index'
end
