Rails.application.routes.draw do
  resources :articals
  root 'pages#home'
  get 'about', to: 'pages#about'

  resources :artical,only: [:show , :index, :new, :create]
end
