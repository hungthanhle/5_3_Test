Rails.application.routes.draw do
  resources :users
  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :articles do
    resources :comments
  end
  resources :entities
  # Defines the root path route ("/")
  root "welcome#index"
end
