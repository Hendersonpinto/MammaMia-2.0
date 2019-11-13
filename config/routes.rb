Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  
  get '/dashboard', to: 'dashboards#dashboard', as: :dashboard
  resources :moms, only: [:show, :index, :new, :create, :destroy] do#WE NEED TO ADD CREATE LATER

    resources :bookings, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
