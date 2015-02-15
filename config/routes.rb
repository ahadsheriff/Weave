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

  # root "todo_lists#index"

  	root "welcome#index"

end
