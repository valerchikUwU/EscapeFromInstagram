Rails.application.routes.draw do
  resources :posts
  devise_for :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/dashboard' => 'accounts#index'
  get 'profile/:username' => 'accounts#profile', as: :profile
  resources :posts, only: %i[new create show]


  root to: 'public#homepage'
  # Defines the root path route ("/")
  # root "articles#index"
end
