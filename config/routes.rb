Rails.application.routes.draw do
  root 'home#top'
  get 'home/about' => 'home#about'
  get '/search' => 'search#search'
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update]
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resource :book_comments, only: [:create, :destroy]
  end
end
