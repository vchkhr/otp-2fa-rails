 # frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'sessions'
  }

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'

  resource :two_factor_settings, only: [:new, :create, :destroy]
end
