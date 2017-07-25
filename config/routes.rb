Rails.application.routes.draw do
  resources :homes
  get 'home/index'


  root 'home#index'

  get 'logs', to: 'home#logs'
  get 'diff', to: 'home#diff'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
