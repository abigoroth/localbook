Rails.application.routes.draw do


  get 'dashboard/index'
  resource :profile

  resources :comments
  resources :wallposts
   resources :user_friends

   resources :conversations do
     resources :messages
   end
  devise_for :users


  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
