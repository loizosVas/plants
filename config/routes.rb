Rails.application.routes.draw do

	root 'home#index'
  	
  	get 'home/index'

  	get 'home/about'

  	resources :plants

  	devise_for :users
end
