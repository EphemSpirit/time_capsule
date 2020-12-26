Rails.application.routes.draw do
  devise_for :users
  resources :journals
  root 'static_pages#home'
  get '/about', to: 'static_pages#about'
  get '/my_journals', to: 'journals#index'
end
