Rails.application.routes.draw do
  resources :events do
    resource :participants
  end
  resource :participants
  resources :alumnus
  resources :photos
end
