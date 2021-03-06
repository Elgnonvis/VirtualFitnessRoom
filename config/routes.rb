Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :programmes
  root 'home#index'
  devise_for :users
  get '/profil', to: 'users#show', as: :profil
  get '/users', to: 'users#index', as: :userall

  # resources :users, only: [:show, :index]
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
