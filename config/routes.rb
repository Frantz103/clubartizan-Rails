Rails.application.routes.draw do
 
  devise_for :customers
  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :listings
  resources :posts
  resources :bookings
  
 
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  mount Lockup::Engine, at: '/lockup'

    root 'pages#home'

    get '/about' => 'pages#about'

    get '/help' => 'pages#help'

    get '/ourstories' => 'pages#ourstories'

    get '/media' => 'pages#media'

    get '/register' => 'pages#register'

    get '/signin' => 'pages#signin'

    get '/browse' => 'pages#browse'

    get '/join' => 'pages#crafts'

    get '/support' => 'pages#support'
    
    get ':user_name', to: 'profiles#show', as: :profile
   
    get ':user_name/edit', to: 'profiles#edit', as: :edit_profile
    patch ':user_name/edit', to: 'profiles#update', as: :update_profile

  get 'tags/index'

  get 'tags/new'

  get 'tags/edit'

  get 'tags/show'

  get 'categories/index'

  get 'categories/new'

  get 'categories/edit'
    
       
  
    
    
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
