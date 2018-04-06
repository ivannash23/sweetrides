Rails.application.routes.draw do

  devise_for :users

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :parts
  resources :bikes

  root 'landing#index'

  get '/users' => 'users#index'
  get '/users/:id' => 'users#show', as: 'user'
  get '/users/:id/edit' => 'users#edit', as: 'edit_user'
  patch '/users/:id' => 'users#update'
	put '/users/:id' => 'users#update'
	get '/users/:id/approve_user' => 'users#approve_user', as: :approve_user


end
