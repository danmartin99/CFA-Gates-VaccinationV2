Rails.application.routes.draw do
  resources :projects
  resources :patients
  devise_for :vaccinators
  devise_for :gr_crds
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
