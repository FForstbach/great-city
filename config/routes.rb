Rails.application.routes.draw do
  devise_for :users
  resources :issues do
    post '/vote' => 'issues#vote'
  end
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'issues#index'
end
