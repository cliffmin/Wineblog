WineBlog::Application.routes.draw do


  resources :posts do
    resources :comments
  end
  resources :wines

  get 'tags/:tag', to: 'posts#index', as: :tag

  get ':controller(/:action(/:id))(.:format)'
  root 'posts#index'
  get "signup", :to => "users#new"
  post "signup", :to => "users#create"
  get "login", :to => "sessions#login"
  post "login", :to => "sessions#login_attempt"
  get "logout", :to => "sessions#logout"
  get "home", :to => "profiles#home"
  get "profile", :to => "profiles#information"
  get "setting", :to => "sessions#setting"
  get "tutorial", :to => "profiles#tutorial"
  patch "profileUpdate", :to => "profiles#update"
  
  #get ':controller(/:action(/:id))(.:format)'
  #get "users/new"
  #root "posts#index" 
  #get "comments/create"
  #get "comments/destroy"
  #get "signup", :to => "users#new"
  #get "login", :to => "sessions#login"
  #post "login", :to => "sessions#login"




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
