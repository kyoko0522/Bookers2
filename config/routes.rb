Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :user_images, only: [:new, :create, :index, :show, :destroy]
  root 'homes#top'
  resources :books
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


