Lmc::Application.routes.draw do

  resources :assessments

#  get "assessments/index"
  get "datashow/behavior"
#  get '/datashow/img/ajax-loader.gif'
  get "pages/review"

  namespace :admin do
    resources :behaviors
    resources :clusters
    resources :competencies
    resources :levels
    resources :panel   # ?? need index only
    resources :positions
    resources :users

    post 'set_values',   to: 'behaviors',    as: 'set_values'
    post 'set_cluster',  to: 'competencies', as: 'set_cluster'
    post 'set_position', to: 'competencies', as: 'set_position'
  end

  get  'reports',     to: 'assessments', as: 'reports'
  get  'report_user', to: 'assessments', as: 'report_user'
  post 'set_user',    to: 'assessments', as: 'set_user'
  post 'handle',      to: 'assessments', as: 'handle'
  post 'review',      to: 'pages',       as: 'review'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'pages#home'

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
