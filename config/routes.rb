Rails.application.routes.draw do
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

  root 'site#home', as: :site


  get '/about' => 'site#about', as: :about
  get '/services' => 'site#services', as: :services
  get '/contact-us' => 'site#contact_us', as: :contact_us
  get '/directions' => 'site#directions', as: :directions



  namespace :admin do
    get  'cms/:page' => 'pages#edit', as: :cms

    post 'cms/:page' => 'pages#update', as: :cms_update

    get '/dashboard' => 'dashboard#index', as: :dashboard

    match '/' => 'users#login', as: :login, via: [ :get, :post ]

    get '/invoices/search' => 'invoices#search', as: :search_invoices

    get '/customers/search' => 'customers#search', as: :search_customers

    get '/logout' =>'users#logout', as: :logout

    resources :users
    resources :invoices
    resources :customers
    resources :pages
  end


end
