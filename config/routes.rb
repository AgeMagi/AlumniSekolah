Rails.application.routes.draw do
  resources :events do
    resources :participants
  end
  resources :participants
  resources :alumnus
  resources :photos
  resources :users, except: :new
  resources :administrators

  get 'search_events', to: 'events#search'
  get 'search_alumnus', to: 'alumnus#search'

  get '06071998', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'events#index'
end
