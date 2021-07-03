Rails.application.routes.draw do
  get 'bookings/index'
  get 'screens/index'
  # get 'shows/index'
  # get 'theater_admin/index'
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'theaters#index'

  # get '/seat/', to: 'theaters#seat', as: 'seat'

  namespace :admin do
    root 'screens#index'
    resources :screens, :shows, :bookings
  end
     
  resources :theaters do
    resources :shows
  end


  # resources :theater_admin do
  #   get 'theater_screens'
  #   post 'create_screen'
  # end

  # get '/theater_admin_index/', to: 'theater_admin#index', as: 'Adminindex'


end
