Rails.application.routes.draw do

  root 'pages#home'

	get '/login' => 'session#new', as: 'login'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy', as: 'logout'

  mount Ckeditor::Engine => '/ckeditor'
  resources :posts
  resources :users, :only => [:new, :create, :index, :update]
	# get '/users/edit' => 'users#edit', :as => 'edit_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
