Rails.application.routes.draw do
  resources :events do
    resource :participants
  end
  resource :participants
  resources :alumnus
  resources :photos
  resources :users, except: :new

  get 'search_events', to: 'events#search'
  get 'search_alumnus', to: 'alumnus#search'

  get '06071998', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
end
