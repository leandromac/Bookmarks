Rails.application.routes.draw do
  root 'booksmarks#index'
  resources :booksmarks do
    get 'get_title', on: :collection
  end
end
