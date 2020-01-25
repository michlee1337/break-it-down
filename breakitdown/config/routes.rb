Rails.application.routes.draw do
  # main
  root 'main#index'
  get 'main/index'

  # guides
  resources :guides
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
