Rails.application.routes.draw do
  root to: 'meals#index'

  get  '/logout', to: 'sessions#destroy'
  get  '/login',  to: 'sessions#index'
  post '/login',  to: 'sessions#create'
  get  '/pages',  to: 'pages#index'

  resources :meals, only: [:index, :show] do
    resources :orders, only: [:create]
  end

  namespace :dashboard do
    resources :users do
      resources :meals, only: [:index, :show]
    end
  end
end
