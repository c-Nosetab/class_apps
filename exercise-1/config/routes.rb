Rails.application.routes.draw do
  get '/fortune' =>'pages#fortune'
  get '/lottery' => 'pages#numbers'
  get '/visit' => 'pages#visits'
end
