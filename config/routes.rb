Rails.application.routes.draw do
  
  
  resources :app_settings
  devise_for :users, controllers: { registrations: 
  	'user_registrations/registrations'}
  resources :template_ones

  root to: 'template_ones#index'

  resources :posts do
  	resources :comments
  end

end
