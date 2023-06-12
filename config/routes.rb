Rails.application.routes.draw do
  resources :raw_material_costs
  resources :farmer_crops
  resources :crop_raw_materials
  resources :raw_materials
  resources :crops
  resources :farmers
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/crop_names', to: 'crops#crop_names'
  get '/crops/:id/related_raw_materials', to: 'crops#show_related_raw_materials'
  # Defines the root path route ("/")
  # root "articles#index"
end
