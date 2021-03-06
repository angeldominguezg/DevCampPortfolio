Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  root to: 'pages#home'

  resources :portfolios, except: [:show] do
    member do
      patch :move
    end
  end

  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  get 'pages/contact'

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
