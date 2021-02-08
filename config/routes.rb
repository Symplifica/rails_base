# frozen_string_literal: true

Rails.application.routes.draw do
  localized do
    root 'home#index'
    get 'home/index'
    resources :comments
    resources :articles
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
