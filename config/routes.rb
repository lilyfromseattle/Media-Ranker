Rails.application.routes.draw do
  # get 'album/index'
  #
  # get 'book/index'
  #
  # get 'movie/index'
  resources :movies
  resources :books
  resources :albums
  get  "/",     to: "home#index"

  get  "/movies",     to: "movies#index"
  get  "/movies/show/:id", to: "movies#show"
  post "/movies/new", to: "movies#create"
  get  "/movies/new", to: "movies#new"
  get "/movies/destroy/:id",  to: "movies#destroy"
  get "/movies/:id/edit", to: "movies#edit"
  put "/movies/:id", to: "movies#update"
  get "/movies/upvote/:id",  to: "movies#upvote"
  get "/movies/downvote/:id",  to: "movies#downvote"

  get  "/books",     to: "books#index"
  get  "/books/show/:id", to: "books#show"
  post "/books/new", to: "books#create"
  get  "/books/new", to: "books#new"
  get "/books/destroy/:id",  to: "books#destroy"
  get "/books/:id/edit", to: "books#edit"
  put "/books/:id", to: "books#update"
  get "/books/upvote/:id",  to: "books#upvote"
  get "/books/downvote/:id",  to: "books#downvote"

  get  "/albums",     to: "albums#index"
  get  "/albums/show/:id", to: "albums#show"
  post "/albums/new", to: "albums#create"
  get  "/albums/new", to: "albums#new"
  get "/albums/destroy/:id",  to: "albums#destroy"
  get "/albums/:id/edit", to: "albums#edit"
  put "/albums/:id", to: "albums#update"
  get "/albums/upvote/:id",  to: "albums#upvote"
  get "/albums/downvote/:id",  to: "albums#downvote"

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
