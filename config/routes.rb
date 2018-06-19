Rails.application.routes.draw do
  root to: 'todos#index'
  resources :todos do
    resource :completion, only: [:create, :destroy]
  end
  resource  :session, only: [:new, :create]
end
