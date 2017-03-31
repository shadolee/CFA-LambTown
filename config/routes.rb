Rails.application.routes.draw do
  get 'contact', to: 'contact#index'

  post 'contact', to: 'contact#mail'

  resources :posts do
    resources :comments
  end
  #devise_for :users
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } do
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
end
  root 'pages#home'
  get 'pages/home'
  get 'pages/about'
  get 'pages/contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
