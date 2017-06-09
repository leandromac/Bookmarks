Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  root 'booksmarks#index'
  resources :booksmarks do
    get 'get_title', on: :collection
  end

  get 'bookmarks', to: 'booksmarks#index'
  get 'bookmarks/new', to: 'booksmarks#new'
end
