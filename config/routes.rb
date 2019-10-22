Rails.application.routes.draw do

  resources :categories, only: [:index, :show]

  get 'books/:id', to: 'books#show', as: 'book'

  get 'authors', to: 'authors#index'

  root 'categories#index'

end
