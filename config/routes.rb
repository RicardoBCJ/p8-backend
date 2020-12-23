Rails.application.routes.draw do
  scope '/api/v1' do
    resources :todos
    resources :users
    resources :help_requests  
    resources :conversations, only: [:index, :create, :show, :update]
    resources :messages, only: [:create, :index, :show]
    resources :pictures, only: [:create, :index, :show, :upadate]
    mount ActionCable.server => '/cable'
  end
  post '/api/v1/login', to: "session#login"
  post '/api/v1/signup', to: "users#create"
  get '/api/v1/auto-login', to: "session#auto_login"    
end
