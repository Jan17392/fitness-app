Rails.application.routes.draw do

  resources :clubs do
    resources :customers
  end

  get '/club/:id', to: 'clubs#index'
  get '/new_club', to: 'clubs#new_club'
  post '/create_club', to: 'clubs#create_club'

  root to: 'clubs#select_club'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
