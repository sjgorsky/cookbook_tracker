Rails.application.routes.draw do
  root 'static_pages#home'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/books',   to: 'books#index'
  get '/new',     to: 'books#new'
  post '/books',  to: 'books#create'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
