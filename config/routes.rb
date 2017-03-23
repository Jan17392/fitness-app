Rails.application.routes.draw do

  devise_for :users

  resources :clubs do
    resources :customers
    resources :clubs
    resources :training_courses
    resources :training_rooms
    resources :training_bookings
    resources :additional_services
    resources :employees
    resources :employee_types
  end

  resources :employee_types

  get '/club/:id', to: 'clubs#index'
  get '/new_club', to: 'clubs#new_club'
  post '/create_club', to: 'clubs#create_club'

  root to: 'clubs#select_club'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
