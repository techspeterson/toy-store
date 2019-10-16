Rails.application.routes.draw do
  get 'manufacturers/', to: "manufacturers#index"
  get 'manufacturers/new', to: "manufacturers#new", as: "new_manufacturer"
  get 'manufacturers/:id', to: "manufacturers#show", as: "manufacturer"
  get 'manufacturers/:id/edit', to: "manufacturers#edit", as: "edit_manufacturer"
  post 'manufacturers/', to: "manufacturers#create"
  patch 'manufacturers/:id', to: "manufacturers#update"
  delete 'manufacturers/:id', to: "manufacturers#destroy"
  get 'users/', to: "users#index"
  get 'users/new', to: "users#new", as: "new_user"
  get 'users/:id', to: "users#show", as: "user"
  get 'users/:id/edit', to: "users#edit", as: "edit_user"
  post 'users/', to: "users#create"
  patch 'users/:id', to: "users#update"
  delete 'users/:id', to: "users#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "toys#index", as: "root"
  resources :toys
end
