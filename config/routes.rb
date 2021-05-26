Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :cards
      resources :draws
    end
  end
end

# fetch('http://localhost:3000/api/v1/cards')
# fetch('http://localhost:3000/api/v1/draws')
