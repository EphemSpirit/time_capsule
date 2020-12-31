Rails.application.routes.draw do
  devise_for :users
  resources :journals, only: [:new, :create, :show, :destroy] do
    resources :topics, only: [:new, :create]
  end
  resource :dashboard, only: [:new, :create, :show, :destroy]

  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/my_journals', to: 'journals#index'
  get '/new_entry', to: 'journals#new'
  get '/dashboard', to: 'dashboard#show'
  get '/topics/create'
end
