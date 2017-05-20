Rails.application.routes.draw do
  devise_for :clubreps
  devise_for :agents, :controllers => { registrations: 'registrations' }
    root to: "static_pages#home"
    get '/options' => "static_pages#options"
    get '/optionsn' => "static_pages#optionsn"
    get '/calendar' => "static_pages#calendar"
    get '/convert' => "static_pages#convert"
    post 'static_pages/conversion' => "static_pages#conversion"
    resources :clubs
    resources :clubreps do
        member do
            get :dealings
        end
    end
    resources :players do 
    resources :enquiries do
        member do
            get :respond
        end
    
    end
    resources :transfers do
        member do 
            get :respond
            post :reject
            post :accept
            get :personal
            post :preject
            post :paccept
            post :done
        end
    end
    end

    resources :agents do
        member do
        get :players
        get :dealings
    end
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
end
