Rails.application.routes.draw do
  get 'bookings/index'
  get 'screens/index'
  mount RailsAdmin::Engine => '/superadmin', as: 'rails_admin'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'theaters#index'


  namespace :admin do
    root 'screens#index'
    resources :screens, :shows, :bookings
  end
     
  resources :theaters do
    resources :shows
      resources :bookings
  end

end
