Rails.application.routes.draw do
  resources :lines

  resources :line_items

  resources :carts

  resources :orders

 

  resources :lots

  
  resources :users  
  resources :sessions, only: [:new, :create, :destroy] 

  root to: 'static_pages#home'
  match '/carparks', to: 'lots#new' , via: 'get'
  match '/maps', to: 'lots#index' , via: 'get'
  match '/m',to:'static_pages#map', via:'get'
  match '/signup',  to: 'users#new', via: 'get'
  match '/signin',  to: 'sessions#new', via: 'get'  
        match '/signupnew',  to: 'users#new', via: 'get'  
  match '/signout', to: 'sessions#destroy', via: :delete
   match '/map',  to: 'lots#map', via: 'get'
     match '/reserve',  to: 'orders#new', via: 'get'
 match '/search', to: 'search#search', via: 'get'
  resources :microposts, only: [:create, :destroy]  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
