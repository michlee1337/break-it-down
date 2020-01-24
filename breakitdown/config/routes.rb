Rails.application.routes.draw do
  # main
  root 'main#index'
  get 'main/index'

  # guides
  get 'guides/new'
  get 'guides/create'
  get 'guides/update'
  get 'guides/edit'
  get 'guides/destroy'
  get 'guides/show'
  get 'guides/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
