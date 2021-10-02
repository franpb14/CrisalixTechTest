Rails.application.routes.draw do
  root 'sessions#new'

  resources :users
  resources :appointments, path_names: { new: 'new/:doctor_id' }
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  get '/doctors', to: 'users#doctors'
end
