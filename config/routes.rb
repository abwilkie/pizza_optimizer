Rails.application.routes.draw do
  resources :toppings do
  	member do
  		post 'unavailable'
  		post 'available'
  	end
  end


  resources :preferences
  root 'users#index'
  resources :users do
  	member do
  		post 'inactivate'
  		post 'activate'
  	end
  end

end
