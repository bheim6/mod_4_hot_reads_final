Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "links#index"

  get '/add_read', to: 'links#create'

  namespace :api do
     namespace :v1 do
       resources :links, only: [:index]
     end
   end
end
