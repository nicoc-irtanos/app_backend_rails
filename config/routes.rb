Rails.application.routes.draw do
  get '/', to: 'static_pages#home'
  get 'user/new', to: 'user#new', as: 'new_user'
  post 'user/new', to: 'user#create', as: 'done'
  get '/user/:id', to: 'user#show', as: 'show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
