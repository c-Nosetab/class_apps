Rails.application.routes.draw do
  get '/query_params' => 'query_params#query'
  get '/num_guess' => 'query_params#num_guess'
  get '/url_segment_params/:this_is_a_key' => 'query_params#url_segment'
  get '/segment_guess/:num_guess' => 'query_params#segment'

  get '/form_guess' => 'query_params#form_submit'
  post '/form_response' => 'query_params#answer'
  #Don't write the :this is a key portion in any other file. Acts as a placeholder. assigning key=>value pairs in the params hash
end
