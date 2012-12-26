Subscriber::Engine.routes.draw do
  #get "subscribe/index"
  match "subscribe/index" => "subscribe#index", :as => "subscribe_index", :via => :get
  match "subscribe/create" => "subscribe#create", :as => "subscribe_create", :via => :post
  #post "subscribe/create"
  root :to => "subscribe#index"
end
