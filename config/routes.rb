Rails.application.routes.draw do
  #get "/departamentos", to: "departamentos#index"
  #get "/departamentos/:id", to: "departamentos#show"
  resources :departamentos do
    resources :jrvs
  end
end
