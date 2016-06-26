Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'
  resources :booksmarks do
    get 'get_title', on: :collection
  end
end
