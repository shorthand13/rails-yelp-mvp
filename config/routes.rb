Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/index'
  get 'restaurants/show'
  get 'restaurant/create'
  get 'restaurant/new'
  get 'restaurant/index'
  get 'restaurant/show'
  resources :restaurants, only: [ :create, :index, :show, :new, :edit] do
    resources :reviews, only: [ :new, :create]
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
