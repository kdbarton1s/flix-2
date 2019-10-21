Rails.application.routes.draw do
  resources :genres
  get 'signup' => "users#new"
  get 'signin' => "sessions#new"
  resource :session
  resources :users

  get 'movies/filter/:scope' => "movies#index", as: :filtered_movies 
  root "movies#index"
  resources :movies do
    resources :favorites
    resources :reviews
  end
end
