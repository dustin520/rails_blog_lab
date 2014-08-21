Rails.application.routes.draw do
  
  root to: "posts#index"

  get '/posts', to: 'posts#index'

  get '/posts/new', to: 'posts#new'
  get '/new', to: 'posts#new'

  get 'posts/:id', to: 'posts#show'

  post '/posts', to: 'posts#create'

  get '/tags', to: 'tags#index'


end
