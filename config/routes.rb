Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#   get 'lists' => 'lists#index'
#   get 'lists/new' => 'lists#new', as: :new_list
#   get 'lists/:id' => 'lists#show', as: :list
#   post 'lists' => 'lists#create' do
#     get 'lists/:id/bookmarks/new', to: 'lists#bookmarks#new', as: :new_list_bookmark
#     post 'lists/:id/bookmarks', to: 'lists#bookmarks#create'
#   end
# end
  root to: 'lists#index'
  resources :lists, except: [ :edit, :update, :destroy ] do
    resources :bookmarks, only: [:new, :create]
    resources :reviews, only: :create
  end
  resources :bookmarks, only: [:destroy]
end
