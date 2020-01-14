Rails.application.routes.draw do

devise_for :admin, controllers:{
  sessions:      'admin/sessions',
  passwords:     'admin/passwords',
  registrations: 'admin/registrations'
  }

  get '/customers_edit' => 'customers#edit', as: :edit_customers
  patch '/customers' => 'customers#update', as: :customer

  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
  }

#loocalhost3000 ルーティング
  root to: 'items#top'

#コントローラーごとのルーティング
#items
  resources :items do
      collection do
      get 'about'
    end
  end
  #get 'items', to: 'items#index'
  #get 'items/:id', to: 'items#show'
  #root toで設定しているため必要ない
  #get '', to: 'items#top'
#customers
  resource :customers do
      collection do
      get 'withdraw'
    end
  end
  #get 'customers', to: 'customers#show'
  #get 'customers/edit', to: 'customers#edit'
  #patch 'customers', to: 'customers#update'
  #put 'customers', to: 'customers#update'
  #get 'customers/withdraw', to: 'customers#withdraw'
  #delete 'customers', to: 'customers#destory'
#histories
  resources :histories
  #get 'histories/information', to: 'histories#information'
  #get 'histories/really', to: 'histories#really'
  #post 'histories', to: 'histories#create'
  #get 'histories/thanks', to: 'histories#thanks'
  #get 'histories', to: 'histories#index'
  #get 'histories/show', to: 'histories#information'
#cart_contents
  resources :cart_contents
  #get 'cart_contents', to: 'cart_contents#index'
#shipping_addresses
  resources :shipping_addresses
  #get 'shipping_addresses', to: 'shipping_addresses#index'
  #delete 'shipping_addresses/:id', to: 'shipping_addresses#destoroy'
  #post 'shipping_addresses', to: 'shipping_addresses#create'
  #get 'shipping_addresses/edit', to: 'shipping_addresses#edit'
  #patch 'shipping_addresses', to: 'shipping_addresses#update'
  #put 'shipping_addresses', to: 'shipping_addresses#update'
  namespace :admin do

    resources :items
    resources :histories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

    resources :genres, only: [:index, :create, :edit, :update]

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #get 'admin/items/top' => 'admin/items#top'

  #get 'admin/customers' => 'admin/customers#index'
  #get 'admin/customers/:id' => 'admin/customers#show'
  #get 'admin/customers/:id/edit' => 'admin/customers#edit'

  #get 'admin/histories' => 'admin/histories#index'
  #get 'admin/histories/show' => 'admin/histories#show'

end
