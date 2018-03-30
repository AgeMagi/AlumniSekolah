Rails.application.routes.draw do
  resources :events do
    resource :participants
  end
  resource :participants
  resources :alumnus
  resources :photos

  get 'search_events', to: 'events#search'
  get 'search_alumnus', to: 'alumnus#search'
end
