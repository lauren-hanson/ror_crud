Rails.application.routes.draw do
  get "post/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  get '/index', to: 'post#index' 

  # route to show individual posts
  get '/post/:id', to: 'post#show', as: :post_show

  # create a new post 
  get 'new_post', to: 'post#new'
  post '/new_post', to: 'post#create'

  # update form 
  get 'post/:id/edit', to: 'post#edit', as: :post_edit
  patch '/post/:id/edit', to: 'post#update'

  # delete post 
  delete 'post/:id', to: 'post#destroy', as: :post_delete
end
