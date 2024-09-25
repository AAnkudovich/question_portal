Rails.application.routes.draw do
  root "home#index"
  resources :questions, only: [:index, :show, :new, :create]
  devise_for :users, path: 'auth', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    password: 'secret',
    confirmation: 'verification',
    unlock: 'unblock',
    registration: 'register',
    sign_up: 'cmon_let_me_in'
  }
  get 'pension_calculator', to: 'home#pension_calculator'
end
