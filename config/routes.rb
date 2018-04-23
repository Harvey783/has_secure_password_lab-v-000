Rails.application.routes.draw do
  root 'welcome#home'
  get '/signup', to: 'users#new', as: 'signup'
  resources :users, only: [:create]
  resources :sessions, only: [:create]
end
