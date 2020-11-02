Rails.application.routes.draw do
  resources :cars do
    resources :pictures, only: [:new, :create, :destroy, :show]
  end
end
