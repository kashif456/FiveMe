Rails.application.routes.draw do

  root 'members#index'
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :members,	only: [:index, :show, :edit, :update]

  #resources :cohortions


end
