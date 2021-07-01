Rails.application.routes.draw do
  get 'shows/index'
  get 'theater_admin/index'
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # root 'theaters#index'
  # get '/all_theaters/', to: 'theaters#list', as: 'theaters_list'
  # get '/seat/', to: 'theaters#seat', as: 'seat'

  resources :theaters do
    resources :shows
  end


  resources :theater_admin do
    get 'theater_screens'
    post 'create_screen'
  end

  get '/theater_admin_index/', to: 'theater_admin#index', as: 'Adminindex'


end
