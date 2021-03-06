TheNetwork::Application.routes.draw do

  resources :the_posts

 resources :users
 resources :sessions, only: [:new, :create, :destroy]

  root  'the_directory#home'
  
  match '/post',    to: 'the_posts#index',        via: 'get'
  match '/help',    to: 'the_directory#help',    via: 'get'
  match '/about',   to: 'the_directory#about',   via: 'get'
  match '/contact', to: 'the_directory#contact', via: 'get'
  match '/music', to: 'the_directory#music', via: 'get'
  match '/invitation', to: 'the_directory#invitation', via: 'get'

  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'


  get "the_directory/music"

  get "users/new"
  get "users/show"

  get "the_post/music"
  get "the_post/film"
  get "the_post/literature"
  get "the_post/photography"
  get "the_post/pnd"
  get "the_post/dns"

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

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
