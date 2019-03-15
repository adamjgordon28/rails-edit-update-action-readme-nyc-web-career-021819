Rails.application.routes.draw do


  get 'articles/new', to: 'articles#new', as: :new_article
  post '/articles', to: 'articles#create', as: :create_article

resources :articles, only: [:index, :show]
get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
patch 'articles/:id', to: 'articles#update'
end
