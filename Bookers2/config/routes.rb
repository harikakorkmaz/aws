Rails.application.routes.draw do

  devise_for :users

  resources :books
  resources :users
  resources :homes


  get 'home/about' => 'homes#about'
  root 'homes#top'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
