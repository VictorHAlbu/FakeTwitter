Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations'}
  
  root to: "user/timeline#index"

end
