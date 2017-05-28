Rails.application.routes.draw do

  devise_for :users

  resources :wikis




  #resources :users, only: [:show]

get 'welcome/about'
#refactor this later
  #get 'about' => 'welcome/about'

  get '/private', to: 'pages#private', as: :secret

  root to: 'welcome#index'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
