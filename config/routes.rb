Rails.application.routes.draw do
  # All my articles
  get 'articles' => 'articles#index'

  # create an article
  get 'articles/new' => 'articles#new'
  post 'articles' => 'articles#create'

  # Show one article
  get 'articles/:id' => 'articles#show', as: :article

  # update article
  get 'articles/:id/edit' => 'articles#edit'
  patch 'articles/:id' => 'articles#update'

  # destroy article
  delete 'articles/:id' => 'articles#destroy', as: :delete_article
end
