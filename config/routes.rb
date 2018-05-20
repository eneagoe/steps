Rails.application.routes.draw do
  resources :day_logs

  root to: 'day_logs#index'
end
