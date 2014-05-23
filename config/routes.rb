GoogleOmniauth::Application.routes.draw do
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'
  get "/contacts/:provider/contact_callback" => "contacts#index"
  get "/contacts/failure" => "contacts#failure"
  match "/contacts/:importer/callback" => "contacts#callback", :via => [:get]

  resources :sessions, only: [:create, :destroy]
  resource :home, only: [:show]

  root to: "home#show"
end