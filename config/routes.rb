require File.expand_path("../../lib/api", __FILE__)

Election::Application.routes.draw do
  root :to => 'home#index'
  devise_for :users
  mount Election::API => "/"
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end