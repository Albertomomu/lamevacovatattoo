Rails.application.routes.draw do
  get '/', to: 'home#index'
  resources :products, only: %i[index show new create]
end
