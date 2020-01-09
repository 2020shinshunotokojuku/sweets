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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'admin/items/top' => 'admin/items#top'

  get 'admin/customers' => 'admin/customers#index'
  get 'admin/customers/:id' => 'admin/customers#show'
  get 'admin/customers/:id/edit' => 'admin/customers#edit'

  get 'admin/histories' => 'admin/histories#index'
  get 'admin/histories/show' => 'admin/histories#show'

end
