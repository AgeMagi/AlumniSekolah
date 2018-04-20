Rails.application.routes.draw do
  resources :events do
    resources :participants
  end
  resources :alumnus
  resources :photos
  resources :users, except: :new
  resources :administrators

  get 'search_events', to: 'events#search'
  get 'home', to: 'events#home'
  get 'search_alumnus', to: 'alumnus#search'

  get '06071998', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'

  root 'events#home'
end