Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'
  get 'home/index'
  get 'home/search'
  get 'home/:id/sortp' => "home#sort_p" ,:as =>"home_sortp"
  get 'home/:id/sortp_d'=>"home#sort_p_d",:as =>"home_sortpd"
  get 'users/:id' =>"home#mypage", :as =>"user_mypage"
  
  resources :sort
  resources :cp do
    resources :board  
    resources :reservation
    resources :nticket
  end
  
  put '/cp/:cp_id/reservation/:id/confirm'=>"reservation#confirm", :as =>"reservation_confirm"
  put '/cp/:cp_id/reservation/:id/reject'=>"reservation#reject", :as =>"reservation_reject"
  
  
  #phonegap_request
  get 'phonegap_request/sort_request'
  get 'phonegap_request/login_request'
  
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
