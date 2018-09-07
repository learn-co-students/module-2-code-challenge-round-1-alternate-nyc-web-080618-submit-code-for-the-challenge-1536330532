Rails.application.routes.draw do
  resources :pizzas
  resources :pizzerias do
    resources :pizza
  end



  # get '/pizzerias/new', to: 'pizzerias#new', as: 'new_pizzeria'
  # post '/pizzerias', to: 'pizzerias#create', as: 'pizzerias'
  # get '/pizzerias/:id', to: 'pizzerias#show', as: 'pizzeria'
  # get '/pizzerias', to: 'pizzerias#index'
end
