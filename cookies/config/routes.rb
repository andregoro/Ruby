Rails.application.routes.draw do
  resources :administrador
  root to: 'administrador#index'
end
