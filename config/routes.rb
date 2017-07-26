Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#splash'
  devise_for :users
  resources :home, :only => [:splash, :index]
  resources :profiles
  resources :hicoos do
    resources :comments, :only => [:new, :create, :update, :delete]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
