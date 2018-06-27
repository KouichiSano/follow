Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get :favorites, on: :member
    get :follows, on: :member
    get :followers, on: :member
  end

  resources :books do
    resource :favorites, only: [:create, :destroy]
  end

  root 'books#profile'
  get 'mypage' => 'books#profile'
  # get 'users/index' => 'users#index'
  # get 'users/show' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
