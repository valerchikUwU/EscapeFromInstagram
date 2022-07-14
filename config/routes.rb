Rails.application.routes.draw do

  mount ImageUploader.derivation_endpoint => "public/uploads"

  devise_for :accounts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/dashboard' => 'accounts#index'
  get 'profile/:username' => 'accounts#profile', as: :profile
  get 'post/like/:post_id' => 'likes#save_like', as: :like_post
  post 'follow/account' => "accounts#follow_account", as: :follow_account

  resources :posts, only: %i[new create show]



  root to: 'public#homepage'
  # Defines the root path route ("/")
  # root "articles#index"
end
