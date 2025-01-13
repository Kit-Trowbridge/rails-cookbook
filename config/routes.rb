Rails.application.routes.draw do
  root to: 'categories#index'
  resources :categories, except: [:index, :edit, :update]
end
