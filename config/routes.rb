Rails.application.routes.draw do
  root 'index#default'
  get 'index/check'
  get 'index/show'

  resources :snips
  resources :sites
  resources :tasks

  resources :upworks
  resources :countries
  resources :skills
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
