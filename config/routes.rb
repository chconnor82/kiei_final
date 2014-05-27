Rails.application.routes.draw do
  # devise_for :user_detail

  root 'home#new'

  # Routes for the Current_room resource:
  # CREATE
  get('/current_rooms/new', { :controller => 'current_rooms', :action => 'new' })
  get('/create_current_room', { :controller => 'current_rooms', :action => 'create' })

  # READ
  get('/current_rooms', { :controller => 'current_rooms', :action => 'index' })
  get('/current_rooms/:id', { :controller => 'current_rooms', :action => 'show' })

  # UPDATE
  get('/current_rooms/:id/edit', { :controller => 'current_rooms', :action => 'edit' })
  get('/update_current_room/:id', { :controller => 'current_rooms', :action => 'update' })

  # DELETE
  get('/delete_current_room/:id', { :controller => 'current_rooms', :action => 'destroy' })
  #------------------------------

  # devise_for :users



  # Routes for the Room_preference resource:
  # CREATE
  get('/room_preferences/new', { :controller => 'room_preferences', :action => 'new' })
  get('/create_room_preference', { :controller => 'room_preferences', :action => 'create' })

  # READ
  get('/room_preferences', { :controller => 'room_preferences', :action => 'index' })
  get('/room_preferences/:id', { :controller => 'room_preferences', :action => 'show' })

  # UPDATE
  get('/room_preferences/:id/edit', { :controller => 'room_preferences', :action => 'edit' })
  get('/update_room_preference/:id', { :controller => 'room_preferences', :action => 'update' })

  # DELETE
  get('/delete_room_preference/:id', { :controller => 'room_preferences', :action => 'destroy' })
  #------------------------------

  # Routes for the User_preference resource:
  # CREATE
  get('/user_preferences/new', { :controller => 'user_preferences', :action => 'new' })
  get('/create_user_preference', { :controller => 'user_preferences', :action => 'create' })

  # READ
  get('/user_preferences', { :controller => 'user_preferences', :action => 'index' })
  get('/user_preferences/:id', { :controller => 'user_preferences', :action => 'show' })

  # UPDATE
  get('/user_preferences/:id/edit', { :controller => 'user_preferences', :action => 'edit' })
  get('/update_user_preference/:id', { :controller => 'user_preferences', :action => 'update' })

  # DELETE
  get('/delete_user_preference/:id', { :controller => 'user_preferences', :action => 'destroy' })
  #------------------------------

  get('/home_610', {:controller => 'home', :action => 'new' })

end

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

