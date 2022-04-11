Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  
  root to: "user/timeline#index"

  resources :users, only: :show 

  namespace :user do
    get 'profile', to: "profile#show"
    get 'potential_to_follow', to: "profile#potential_to_follow"
    get 'following', to: "profile#following"
    get 'followers', to: "profile#followers"
    resources :posts, only: [:create, :destroy]
  end

  resources :users, only: :show
  resources :comments, only: [:create, :destroy] 

end
