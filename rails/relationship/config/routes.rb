Rails.application.routes.draw do
  resources :contacts
  resources :companies
  root 'root#index'
end
