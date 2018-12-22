Rails.application.routes.draw do
  # Knock route for token login
  post    'user_token'      => 'user_token#create'
  
  root    'home#index'
  get     'auth'            => 'home#auth'
  
  get     '/users'          => 'users#index'
  get     '/users/current'  => 'users#current'
  post    '/users/create'   => 'users#create'
  patch   '/user/:id'       => 'users#update'
  delete  '/user/:id'       => 'users#destroy'
  
end
