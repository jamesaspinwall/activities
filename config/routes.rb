Rails.application.routes.draw do
  root 'index#default'

  get 'index/check'

  get 'index/show'

  resources :snips
  resources :sites
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
