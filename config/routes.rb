Rails.application.routes.draw do
  devise_for :users

  root 'static_pages#welcome'

  get '/about' => 'static_pages#about'

  resources :recipes
  get '/profile' => 'user#show'
end
