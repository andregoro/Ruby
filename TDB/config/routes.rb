Rails.application.routes.draw do
  get 'home/new'
  get '/home',to: 'home#index'
  resources :home

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
