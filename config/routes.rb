Rails.application.routes.draw do
  get 'contact/index'
  resources :people
  resources :sectors
  resources :disricts
  devise_for :users
  # root 'people#index'
  resources :lunches
  resources :break_fasts
  resources :restoras
  get "/medicalcenter/:page" => "medicalcenter#index"
  root      'contact#index'
resources :contact, only: [:index, :new, :create]
  # root "medicalcenter#index", page: "index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
