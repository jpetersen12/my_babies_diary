Rails.application.routes.draw do
  # Routes for the Infant resource:

  # CREATE
  get "/infants/new", :controller => "infants", :action => "new"
  post "/create_infant", :controller => "infants", :action => "create"

  # READ
  get "/infants", :controller => "infants", :action => "index"
  get "/infants/:id", :controller => "infants", :action => "show"

  # UPDATE
  get "/infants/:id/edit", :controller => "infants", :action => "edit"
  post "/update_infant/:id", :controller => "infants", :action => "update"

  # DELETE
  get "/delete_infant/:id", :controller => "infants", :action => "destroy"
  #------------------------------

  # Routes for the Nap resource:
  # CREATE
  get "/naps/new", :controller => "naps", :action => "new"
  post "/create_nap", :controller => "naps", :action => "create"

  # READ
  get "/naps", :controller => "naps", :action => "index"
  get "/naps/:id", :controller => "naps", :action => "show"

  # UPDATE
  get "/naps/:id/edit", :controller => "naps", :action => "edit"
  post "/update_nap/:id", :controller => "naps", :action => "update"

  # DELETE
  get "/delete_nap/:id", :controller => "naps", :action => "destroy"
  #------------------------------

  # Routes for the Feeding resource:
  # CREATE
  get "/feedings/new", :controller => "feedings", :action => "new"
  post "/create_feeding", :controller => "feedings", :action => "create"

  # READ
  get "/feedings", :controller => "feedings", :action => "index"
  get "/feedings/:id", :controller => "feedings", :action => "show"

  # UPDATE
  get "/feedings/:id/edit", :controller => "feedings", :action => "edit"
  post "/update_feeding/:id", :controller => "feedings", :action => "update"

  # DELETE
  get "/delete_feeding/:id", :controller => "feedings", :action => "destroy"
  #------------------------------

  # Routes for the Milestone resource:
  # CREATE
  get "/milestones/new", :controller => "milestones", :action => "new"
  post "/create_milestone", :controller => "milestones", :action => "create"

  # READ
  get "/milestones", :controller => "milestones", :action => "index"
  get "/milestones/:id", :controller => "milestones", :action => "show"

  # UPDATE
  get "/milestones/:id/edit", :controller => "milestones", :action => "edit"
  post "/update_milestone/:id", :controller => "milestones", :action => "update"

  # DELETE
  get "/delete_milestone/:id", :controller => "milestones", :action => "destroy"
  #------------------------------

  devise_for :user_accounts
  root "infants#index"

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
