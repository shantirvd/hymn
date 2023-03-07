Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :games, only: %i[new create edit update show]

  resources :users_games do
    resources :answers, only: %i[update]
  end

  resources :songs, only: %i[show] do
    resources :answers, only: %i[new create index]
  end
end
