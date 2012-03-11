Vabooom::Application.routes.draw do
    
  match 'login' => "user_sessions#new", :as => :login
  match 'logout' => "user_sessions#destroy", :as => :logout
  resources :user_sessions

  resources :users

  resources :pages

  root :to => "pages#index", :as => :root
end
