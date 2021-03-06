Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :projects
      resources :supplies
      resources :materials
      resources :tools
      resources :inventories
      resources :tasks
      resources :notes
      resources :users
    end
  end
end
