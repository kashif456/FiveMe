Rails.application.routes.draw do

  root 'cohortions#index'
  devise_for :users
  resources :cohortions

end
