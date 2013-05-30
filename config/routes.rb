Mission4cause::Application.routes.draw do
  devise_for :users

  root :to => 'pages#home'
  get 'about' => 'pages#about'
  get 'causes' => 'pages#causes'
  get 'missionaries' => 'pages#missionaries'
end
