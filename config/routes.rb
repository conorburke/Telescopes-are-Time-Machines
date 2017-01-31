Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'info_pages#home'

  # info pages
  get '/about', to: 'info_pages#about'
  get '/contact', to: 'info_pages#contact'
  get '/help', to: 'info_pages#help'
  get '/home', to: 'info_pages#home'

  resources :users
  resources :account_activations, only: [:edit]
end
