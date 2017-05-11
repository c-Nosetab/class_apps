Rails.application.routes.draw do
  get '/fan' => 'pages#wind'
  get '/bubble' => 'pages#pop'
  get '/ruby' => 'pages#rails'
  get '/dragon' => 'pages#drake'
  get '/link' => 'pages#zelda'
  get '/hello' => 'pages#world'

  get 'time' => 'pages#watch'
end
