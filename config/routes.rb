Rails.application.routes.draw do

  resources :users do
    resources :wine_bottles
    resources :scotch_bottles
  end

  root 'welcome#index'

  get '/signup' => 'registrations#new', as: :signup
  post '/signup' => 'registrations#create'
  get '/signin' => 'sessions#new', as: :signin
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy', as: :signout


end
