Rails.application.routes.draw do

  resources :brands do
    # /brands/1/all-vehicles
    # get '/all-vehicles', to: 'brands#all_vehicles'
    # /brands/1/cars/new
    resources :cars do
      # /brands/1/cars/1/pictures/new
      # resources :pictures, only: [:new, :create, :destroy, :show]
    end
    # /brands/1/trucks
    # resources :trucks
  end

  # /brands/1/cars/new
  # resources :brands do
  #   resources :cars, only: [:new, :index, :create]
  # end

  # /cars/1
  # resources :cars, only: [:show, :edit, :update, :destroy]

end
