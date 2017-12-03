Rails.application.routes.draw do
  resources :offers
  resources :tasks
  resources :projects
  resources :contacts
  resources :companies
  root 'root#index'
end
