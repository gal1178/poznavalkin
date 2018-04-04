Rails.application.routes.draw do
  resources :toys
  root "toys#main"
  get 'contakt', to: 'toys#contakt'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
