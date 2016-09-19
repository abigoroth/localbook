Rails.application.routes.draw do
  resources :comments
  resources :wallposts
  devise_for :users
  resources :users
  devise_for :user_ls
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
