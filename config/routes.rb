Rails.application.routes.draw do
  root 'welcome#index'
  resources :welcome, only: [:show]
  resources :quotes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
