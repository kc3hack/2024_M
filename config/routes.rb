Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :roots, only: [:index, :new]

  get 'root/result' => 'root#result'

  get 'root/siteTop' => 'root#siteTop'

  get 'root/login' => 'root#login'

  get 'root/newAccount' => 'root#newAccount'

  get 'root/mypageRecommend' => 'root#mypageRecommend'

  root to: 'root#index'
end
