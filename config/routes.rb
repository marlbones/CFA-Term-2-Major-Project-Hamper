Rails.application.routes.draw do

  resources :requests do
    member do
      post :accept
      post :reject
    end
  end
  resources :products
  root 'products#index'
  get 'pages/selldash'
  resources :conversations do
    resources :messages
 end

  devise_for :users, :controllers => { registrations: 'registrations' }
  # :controllers allocates custom made registration to devise
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
