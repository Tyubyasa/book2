Rails.application.routes.draw do
  get 'show/edit'
  get 'show/new'
  get 'users/top'
  get 'users/show'
  get 'users/edit'
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  devise_for :users
root to: "homes#top"
 get 'homes/about', to: 'homes#about', as: :about
resources :books, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
end