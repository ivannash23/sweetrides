Rails.application.routes.draw do

  resources :stores
  resources :bikes
  root 'landing#index'


end
