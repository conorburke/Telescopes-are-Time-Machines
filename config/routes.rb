Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'info_pages#home'

  # mount actioncable on the /cable url
  mount ActionCable.server => '/cable'

  # info pages
  get '/about', to: 'info_pages#about'
  get '/contact', to: 'info_pages#contact'
  get '/help', to: 'info_pages#help'
  get '/home', to: 'info_pages#home'

  # sessions
  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'
  post '/login', to: 'sessions#create'

  resources :users
  resources :account_activations, only: [:edit]
  resources :chat_rooms, only: [:new, :create, :show, :index]
end
