Rails.application.routes.draw do
  
  devise_for :users
  get 'welcome/index'

  resources :todo_lists do 
  	resources :todo_items do
  		member do
  			patch :complete
  		end
  	end
  end

  authenticated :user do
    root 'todo_lists#index', as: "authenticated_root"
  end

  root "welcome#index"

end
