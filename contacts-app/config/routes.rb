Rails.application.routes.draw do
  get '/' => 'people#index'
  get '/contact' =>'people#index'

  get '/contact/new' => 'people#new'
  post '/contact' => 'people#create'
  get '/contact/:id' => 'people#show'

  get '/contact/:id/edit' => 'people#edit'
  patch '/contact/:id' => 'people#update'

  delete '/contact/:id' => 'people#destroy'

end
