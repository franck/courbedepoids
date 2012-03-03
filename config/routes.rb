Testapp::Application.routes.draw do
  get "home/index", :as => :home

  resources :samples
  
  match '/auth/:provider/callback' => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

  root :to => 'samples#index'
end
