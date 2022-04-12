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
      
    resources :users, only: :show
    resources :comments, only: [:create, :destroy] 


   post "follow/:id", to: "subscription#follow", as: :follow
   post 'unfollow/:id', to: "subscription#unfollow", as: :unfollow
  end

end
