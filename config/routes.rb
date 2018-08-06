Rails.application.routes.draw do
  #get 'users/index' => 'users#index'
  resources :users
  resources :loans
  get '/', to: 'sessions#new'
  post '/', to: 'sessions#create'
  get '/signup', to: 'users#new'
get  "/login", to: "sessions#new"
post "/login", to: "sessions#create"
delete "/logout", to: "sessions#destroy"
#get  "/logout", to: "sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
