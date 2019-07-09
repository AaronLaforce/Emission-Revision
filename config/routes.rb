Rails.application.routes.draw do
  get 'search/new'
  get 'search/create'
  get 'search/index'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/new_car', to: 'cars#new'
  post '/new_car', to: 'cars#create'
  get '/cars', to: 'cars#index'
  get '/new_fuel_log/:id', to: 'fuel_logs#new'
  post '/new_fuel_log/:id', to: 'fuel_logs#create'
  get '/fuel_logs',to: 'fuel_logs#index'
  get '/searchs/:name', to: 'search#index'
  get '/search', to: 'search#new'
  post '/search/new', to: 'search#create'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
