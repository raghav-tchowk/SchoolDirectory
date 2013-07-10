School::Application.routes.draw do

  get "subjects/index"

  get "subjects/list"

  get "subjects/show"

  get "subjects/new"

  get "subjects/create"

  get "subjects/edit"

  get "subjects/update"

  get "subjects/delete"

  get "subjects/destroy"

  get "exam_types/index"

  get "exam_types/list"

  get "exam_types/show"

  get "exam_types/new"

  get "exam_types/create"

  get "exam_types/edit"

  get "exam_types/update"

  get "exam_types/delete"

  get "exam_types/destroy"

  get "event_alert_types/index"

  get "event_alert_types/list"

  get "event_alert_types/show"

  get "event_alert_types/new"

  get "event_alert_types/create"

  get "event_alert_types/edit"

  get "event_alert_types/update"

  get "event_alert_types/delete"

  get "event_alert_types/destroy"

  get "emergency_alert_types/index"

  get "emergency_alert_types/list"

  get "emergency_alert_types/show"

  get "emergency_alert_types/new"

  get "emergency_alert_types/create"

  get "emergency_alert_types/edit"

  get "emergency_alert_types/update"

  get "emergency_alert_types/delete"

  get "emergency_alert_types/destroy"

  get "comp_alert_types/index"

  get "comp_alert_types/list"

  get "comp_alert_types/show"

  get "comp_alert_types/new"

  get "comp_alert_types/create"

  get "comp_alert_types/edit"

  get "comp_alert_types/update"

  get "comp_alert_types/delete"

  get "comp_alert_types/destroy"

  get "alert_type1s/index"

  get "alert_type1s/list"

  get "alert_type1s/show"

  get "alert_type1s/new"

  get "alert_type1s/create"

  get "alert_type1s/edit"

  get "alert_type1s/updatedelete"

  get "alert_type1s/destroy"

  get "sections/index"

  get "sections/list"

  get "sections/show"

  get "sections/new"

  get "sections/create"

  get "sections/edit"

  get "sections/updatedelete"

  get "sections/destroy"

  get "standards/index"

  get "standards/list"

  get "standards/show"

  get "standards/new"

  get "standards/create"

  get "standards/edit"

  get "standards/updatedelete"

  get "standards/destroy"

  get "boards/index"

  get "boards/list"

  get "boards/show"

  get "boards/new"

  get "boards/create"

  get "boards/edit"

  get "boards/updatedelete"

  get "boards/destroy"

  root :to => 'school_directories#list'

  get "school_directories/list"

  get "school_directories/show"

  get "school_directories/new"

  get "school_directories/destroy"

  get "school_directories/index"

  get "school_directories/create"

  get "school_directories/read"

  get "school_directories/update"

  get "school_directories/delete"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id))(.:format)'
end
