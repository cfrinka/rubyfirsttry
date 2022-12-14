Rails.application.routes.draw do

  root to: "main#index"

  get "/about", to: "about#index", as: :about

  get '/password', to: 'passwords#edit', as: :edit_password
  patch '/password', to: 'passwords#update'

  get '/sign_up', to: 'registration#new'
  post '/sign_up', to: 'registration#create'

  get '/sign_in', to: 'sessions#new'
  post '/sign_in', to: 'sessions#create'

  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'


  delete '/logout', to: 'sessions#destroy'

end
