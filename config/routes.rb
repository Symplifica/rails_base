# frozen_string_literal: true

Rails.application.routes.draw do
  resources :table_symplis
  resources :table_remotes
  localized do
    root 'table_symplis#index'
    get 'home/index'
    resources :comments
    resources :articles
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
