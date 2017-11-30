Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  authenticated :admin do
    namespace :admin do
      root to: 'pages#dashboard', as: :authenticated
      resources :companies
      resources :rooms
      resources :lights
    end
  end

  root to: 'pages#index'

  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs/api-docs.json')
end
