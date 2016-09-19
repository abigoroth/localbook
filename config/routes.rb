Rails.application.routes.draw do
<<<<<<< HEAD
  

=======
  resources :comments
  resources :wallposts
>>>>>>> 86f90dfc81215fd63e732f35b9b0af125501b474
  devise_for :users
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
