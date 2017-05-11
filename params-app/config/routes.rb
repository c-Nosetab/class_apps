Rails.application.routes.draw do
  get '/query_params' => 'params_examples#query'
  get '/form_show_params' => 'params_examples#form_show'
  post '/form_send_params' => 'params_examples#form_send'
end
