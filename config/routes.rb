Rails.application.routes.draw do
  get 'cookies/new'
  get 'cookies/create'
  get 'cookies/destroy'
  resources :users
  root "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
