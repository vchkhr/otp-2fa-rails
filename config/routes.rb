 # frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
end
