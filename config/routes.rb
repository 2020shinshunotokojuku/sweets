Rails.application.routes.draw do

devise_for :admins, controllers:{
  sessions:      'admins/sessions',
  passwords:     'admins/passwords',
  registrations: 'admins/registrations'
  }
  devise_for :customers, controllers: {
  sessions:      'customers/sessions',
  passwords:     'customers/passwords',
  registrations: 'customers/registrations'
  }

#loocalhost3000 ルーティング
  root to: 'items#top'

#コントローラーごとのルーティング
#items
  resources :items
  #get 'items', to: 'items#index'
  #get 'items/:id', to: 'items#show'
  #root toで設定しているため必要ない
  #get '', to: 'items#top'
#customers
  resource :customers
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
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
