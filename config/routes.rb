A3::Application.routes.draw do
  get "spheres/new"

  get "spheres/create"

  get "serlevels/new"

  get "serlevels/create"

  get "educations/new"

  get "educations/create"

  get "sertypes/new"

  get "testsessions/new"

  get "testsessions/create"

  get "testsessions/show"

  get "testsessions/destroy"
  match ':tconfigurations/fastconf'=>'tconfigurations#fastconf'
  match 'admin' => 'users#admin', :as=>:admin
 
  resources :tconfigurations do
    collection do
      get "fastconf"
    end
  end
  resources :testsessions
  resources :configuration_types

  
  resources :serlevels
  resources :sertypes
  resources :spheres
  resources :educations


  get "pictures/create"

  get "pictures/destroy"

  resources :qtypes
  

  get "questions/index"

  get "questions/new"

  get "questions/show"

  get "questions/edit"

  get "questions/update"

  get "questions/create"

  get "questions/destroy"

  get "question_types/index"

  get "question_types/new"

  get "question_types/show"

  get "question_types/edit"

  get "question_types/update"

  get "question_types/create"

  get "question_types/destroy"




  get "test/new"

  get "test/index"

  get "test/show"

  get "test/delete"

  get "themes/show"

  get "themes/new"

  get "themes/create"

  get "themes/destroy"

  get "disciplines/index"

  get "disciplines/new"

  get "disciplines/show"
  get "disciplines/create"

  get "disciplines/destroy"

  get "home/index"
  get "sessions/new"
  get "sessions/destroy"
  get "sessions/show"
  get "users/new"
  get "users/create"
  get "tconfigurations/fastconf"

  resources :users

  resources :sessions
  resources :question_types

  resources :themes, :only =>[:new, :create, :show, :destroy]

  resources :disciplines do
    resources :themes, :only =>[:new, :create, :show, :destroy, :edit, :update] do
      resources :questions do
        resources :pictures
      end
    end
  end

  match 'signup' => 'users#new', :as => :signup

  match 'register' => 'users#create', :as => :register

  match 'login' => 'sessions#new', :as => :login

  match 'logout' => 'sessions#destroy', :as => :logout

  match '/activate/:activation_code' => 'users#activate', :as => :activate, :activation_code => nil

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
  root :to => "testsessions#new"

  # See how all your routes lay out with "rake routes"
 
match ':testsessions/show/:id' =>"testsessions#show"


  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
   match ':controller(/:action(/:id(.:format)))'
end
