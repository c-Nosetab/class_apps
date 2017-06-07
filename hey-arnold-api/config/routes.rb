Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do

    namespace :v1 do
      get '/thing' => 'things#index'
      post '/thing' => 'things#create'
      get '/thing/:id' => 'things#show'
      patch '/thing/:id' => 'things#update'
      delete '/thing/:id' => 'things#destroy'
    end

    namespace :v2 do
      get '/thing' => 'things#index'
      post '/thing' => 'things#create'
      get '/thing/:id' => 'things#show'
      patch '/thing/:id' => 'things#update'
      delete '/thing/:id' => 'things#destroy'
    end
  end

end
