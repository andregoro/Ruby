Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get "/sobre",to: "sobre#index"
  
  get "/produtos",to: "produtos#index"
  get "/produto/:id/alterar", to: "produtos#alterar"
  post "/produto/:id/salvar", to: "produtos#salvar"
  post "/produto/incluir", to: "produtos#incluir"
 
  get "/produto/:id/excluir",to: "produtos#excluir"
  get "/cachorros",to: "cachorros#index"
end
