Rails.application.routes.draw do
  get 'post/index'
  get 'post/new'
  get 'post/show'
  root 'post#index'
  post '/create' => 'post#create'
  get '/show/:id' => 'post#show'
  post '/post/:post_id/commentcreate' => 'post#commentcreate'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
