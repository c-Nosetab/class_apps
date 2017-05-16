Rails.application.routes.draw do
  get '/' => 'items#index'
  get '/houses' => 'items#index'
  get '/houses/new' => 'items#new'
  post '/houses' => 'items#create'
  get 'houses/:id' => 'items#show'
  get 'houses/:id/edit' => 'items#edit'
  patch 'houses/:id' => 'items#update'
  delete 'houses/:id' => 'items#destroy'
end
