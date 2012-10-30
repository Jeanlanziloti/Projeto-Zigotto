
Zigotto::Application.routes.draw do
  resources :protocols

  resources :layers
	root :to => 'home#index'
end
