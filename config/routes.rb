Rails.application.routes.draw do
  # get 'ingredients/show'
  # get 'ingredients/new'
  # get 'ingredients/index'
  # get 'ingredients/edit'
  # get 'doses/show'
  # get 'doses/new'
  # get 'doses/index'
  # get 'doses/edit'
  # get 'cocktails/show'
  # get 'cocktails/new'
  # get 'cocktails/index'
  # get 'cocktails/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


# root to: 'cocktails#index'
# resources :cocktails, except: :index


root to: 'cocktails#index'
  resources :cocktails, only: [ :show, :new, :create, :destroy ] do
    resources :doses, only: [ :new, :create ]
  end
  resources :doses, only: [ :destroy ]
end
