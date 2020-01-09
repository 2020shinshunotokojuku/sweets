Rails.application.routes.draw do
  # 　みや　namespace :admin do
  end
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
    get 'admin/items'=>"admin/items#index"
    get 'admin/items/new'=>"admin/items#new"
    get 'admin/items/edit'=>"admin/items#edit"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
