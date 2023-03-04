Rails.application.routes.draw do
  get '/'  => 'homes#top'
  get 'books/new'
  get '/books' => 'books#index', as:'books'
  post 'books' => 'books#create'
  get '/books/:id' =>'books#show',as:'show_book'
  get 'books/:id/edit' =>'books#edit',as:'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'book/:id' => 'books#destory', as: 'destory_book'
  #resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
