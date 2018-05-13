Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get 'users/show' => 'users#show'
  resources 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
