Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "links#index"

 get '/add_read', to: 'links#create'
end
