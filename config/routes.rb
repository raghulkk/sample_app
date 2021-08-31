Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #get "/", to: "users#root"
   #get "/users", to: "users#index" 
   #get "/users/search", to: "users#search"
   #get "/users/:id/edit", to: "users#edit"
  #get "/users/new", to: "users#new" 
  #get "/users/edit/" to: "" 
  #get "/users/:id", to: "users#show" 
  #post "/users", to: "users#create"
  #get "/doctors", to: "doctors#index"
  #get "/users"
  
  resources :cars do
  get "/search", to: "users#search"
  end  
 
  
  
  resources :users do
  get "/search", to: "users#search"
    get "/send_welcome_email", to: "users#send_welcome_email"    
  end

  resources :doctors do 
    get "/search", to: "doctors#search"   
  end
    
end
