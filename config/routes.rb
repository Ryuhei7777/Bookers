Rails.application.routes.draw do
  get '/'  => 'homes#top'
  get 'books/new'
  get '/books' => 'books#index', as:'books'
  post 'books' => 'books#create'
  get '/books/show'
  get 'books/edit'

  resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
