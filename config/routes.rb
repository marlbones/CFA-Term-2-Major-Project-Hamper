Rails.application.routes.draw do

  resources :badges
  get 'contact', to: "contact#index"
  post 'contact', to: "contact#mail"

  post '/rate' => 'rater#create', :as => 'rate'
  resources :requests do
    member do
      post :accept
      post :reject
    end
  end
  resources :products
  root 'products#index'
  get 'pages/selldash'
  get 'pages/accepted'
  resources :conversations do
    resources :messages
 end

  # :controllers allocates custom made registration to devise
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :users do
    member do
      resources :reviews
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
