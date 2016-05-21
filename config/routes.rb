Rails.application.routes.draw do
  devise_for :users
  root to: 'visitors#index'
  resources :teachers do
    get :subjects
  end
  resources :students do
    get :subjects
  end

  get '/report/subjects', to: 'reports#subjects'
end
