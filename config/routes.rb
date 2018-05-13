Rails.application.routes.draw do
  get 'users/index' => 'users#index'
  get 'users/show' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
