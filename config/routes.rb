Rails.application.routes.draw do
  
  resources :posts
  devise_for :users, controllers: { registrations: 
  	'user_registrations/registrations'}
  resources :template_ones

  root to: 'index', to: 'template_ones#index'
  
end
