Rails.application.routes.draw do
  devise_for :users
  root 'restoras#index'
  resources :lunches
  resources :break_fasts
  resources :restoras
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
