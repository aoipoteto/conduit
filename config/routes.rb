Rails.application.routes.draw do

  resources :articles, only:[:index, :new, :edit, :show]
  post 'articles/create', to: 'articles#create', as: 'articles_create'
  patch 'articles/update/:id', to: 'articles#update', as:'articles_update'
  delete 'articles/delete/:id', to: 'articles#destroy', as:'articles_destroy'
  
  # get 'articles/new'
  # post 'articles/create'
  # get 'articles/index'
  # get 'articles/:id' => 'articles#show'
       #URL↑　　　　　　　　　#articlesコントローラのshowアクションを表示する
end
