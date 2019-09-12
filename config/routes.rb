Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :stories
  resources :comments
  resources :users
  patch '/stories/:id', to: 'stories#update'
  post '/stories', to: 'stories#create'

end
