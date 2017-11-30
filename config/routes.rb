Rails.application.routes.draw do
  devise_for :admins
  devise_for :users

  authenticated :admin do
    namespace :admin do
      root to: 'pages#dashboard', as: :authenticated
    end
  end

  root to: 'pages#index'
end
