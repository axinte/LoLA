DemoApp::Application.routes.draw do
   get "static_pages/index"
   get "static_pages/video"
   get "static_pages/player1"
   get "static_pages/player2"
   get "static_pages/player3"
   get "static_pages/player4"
   get "static_pages/player5"
   root to: 'static_pages#video'

    match '/home', to: 'static_pages#index', via: :get
    match '/player1', to: 'static_pages#player1', via: :get
    match '/player2', to: 'static_pages#player2', via: :get
    match '/player3', to: 'static_pages#player3', via: :get
    match '/player4', to: 'static_pages#player4', via: :get
    match '/player5', to: 'static_pages#player5', via: :get
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
