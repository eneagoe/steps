Rails.application.routes.draw do
  devise_for :users

  resources :day_logs

  root to: 'day_logs#index'
end
