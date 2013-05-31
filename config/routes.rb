Mission4cause::Application.routes.draw do
  resources :causes


  devise_for :users

  root :to => 'causes#index'
  get 'about' => 'pages#about'
  get 'causes' => 'pages#causes'
  get 'missionaries' => 'pages#missionaries'
end
