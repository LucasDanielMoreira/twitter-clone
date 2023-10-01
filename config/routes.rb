Rails.application.routes.draw do
  resources :messages, except: %i[ index show ] do
    post 'retweet', to: 'messages#retweet'
  end

  get  'login',  to: 'sessions#new'
  get  'logout', to: 'sessions#destroy'
  post 'login',  to: 'sessions#create'

  get  'signup', to: 'users#new'
  post 'signup', to: 'users#create'

  root 'timeline#index'
end
