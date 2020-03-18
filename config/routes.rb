Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups
  resources :boards
  # get 'boards', to: 'boards#index'
  get 'boards/find/:group_id', to: 'boards#find'
  # post 'boards', to: 'boards#create'
end
