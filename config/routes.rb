Rails.application.routes.draw do
  resources :interpretations
  namespace :api do
    namespace :v1 do
      resources :cards
      resources :draws 
      resources :draws do
        resources :interpretations
      end
      resources :interpretations
      end
    end
  end
