Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'courses#index'

  get 'courses/siteTop' => 'courses#siteTop'

  get 'courses/login' => 'courses#login'

  get 'courses/newAccount' => 'courses#newAccount'

  get 'courses/mypageRecommend' => 'courses#mypageRecommend'

  get 'courses/index' => 'courses#index'

  get 'courses/new' => 'courses#new'

  resources :courses
end
