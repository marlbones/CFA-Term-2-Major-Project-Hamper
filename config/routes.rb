Rails.application.routes.draw do
  resources :products
  root 'products#index'

  devise_for :users, :controllers => { registrations: 'registrations' }
  # :controllers allocates custom made registration to devise
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
