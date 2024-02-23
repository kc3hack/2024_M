Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'courses#siteTop' 

  get 'courses/siteTop' => 'courses#siteTop'

  get 'courses/login' => 'courses#login'

  get 'courses/newAccount' => 'courses#newAccount'

  get 'courses/mypageRecommend' => 'courses#mypageRecommend'

  get 'courses/mypageHistory' => 'courses#mypageHistory'

  # get 'courses/index' => 'post/new'

  get 'courses/new' => 'courses#new'

  get 'posts/index' => 'posts#index'

  get 'posts/new' => 'posts#new'

  post 'posts/index' => 'posts#index'

  get 'users/show' => 'users#show'

  resources :courses

  resources :posts

  # devise_for :users

  resources :users, only: [:show]
end
