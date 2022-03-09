Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :users, only: [:index, :show, :edit, :update]
end
 

