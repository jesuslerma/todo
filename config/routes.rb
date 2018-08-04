Rails.application.routes.draw do
  get 'users/login'
  resources :tasks
  resources :users

  post 'sign_in', to: 'users#sign_in', as: :sign_in
  root 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
