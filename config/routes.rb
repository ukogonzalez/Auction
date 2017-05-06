Rails.application.routes.draw do
get '/', to: 'users#index'
get '/user', to: 'users#index'
get '/user/new', to: 'users#new'
post '/user', to: 'users#create', as: 'users'
get '/user/:id', to: 'users#show'


 #resource :user

# get '/products', to: ''
# get '/product/create', to: ''
end
