Rails.application.routes.draw do
  
  # get 'comments/index'

  # get 'comments/new'

  # get 'comments/show'


  root to: "posts#index"

  resources :posts do
	  resources :comments
	end

  # get '/posts', to: 'posts#index'

  # get '/posts/new', to: 'posts#new'
  # get '/new', to: 'posts#new'

  # get 'posts/:id', to: 'posts#show'
  # post '/posts', to: 'posts#create'

  get '/tags', to: 'tags#index'


end
