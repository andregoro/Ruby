Rails.application.routes.draw do
  #resources :carros
#  root to: "carro#index"
 get "/carros",to: "carro#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
