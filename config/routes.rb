Testapp::Application.routes.draw do
  get "home/index", :as => :home

  resources :samples
  resources :users
  
  match '/auth/:provider/callback' => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  root :to => 'users#index'
end
