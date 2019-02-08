Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :portfolios, exept: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about', to: 'pages#About'
  get 'contact', to: 'pages#Contact'
  resources :blogs
  root to: 'pages#Home' 
 end
