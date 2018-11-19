# frozen_string_literal: true
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Show must be added to view the edit url
  resources :users, only: %i[new create edit update]

  root 'users#index'
end

