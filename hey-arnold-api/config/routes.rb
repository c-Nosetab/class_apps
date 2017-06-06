Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/thing' => 'things#index'
  post '/thing' => 'things#create'
  get '/thing/:id' => 'things#show'
  patch '/thing/:id' => 'things#update'
  delete '/thing/:id' => 'things#destroy'

end
