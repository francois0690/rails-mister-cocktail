Rails.application.routes.draw do
  get 'ingredients/show'
  get 'ingredients/new'
  get 'ingredients/index'
  get 'ingredients/edit'
  get 'doses/show'
  get 'doses/new'
  get 'doses/index'
  get 'doses/edit'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/index'
  get 'cocktails/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :cocktails do
  #   resources :doses, only
  #   resources :ingredients
  # end

  resources :cocktails, only: [ :show, :index, :new, :create ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end
