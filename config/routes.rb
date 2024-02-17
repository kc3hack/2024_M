Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :roots, only: [:index, :new]

  get 'root/result' => 'root#result'

  root to: 'root#index'
end
