Rails.application.routes.draw do
  root to: "pages#home"
  get "/about", to: "pages#about"
  get "/admin_home", to: "admin#home"
  resources :projects, param: :slug

  devise_for :users, skip: [:sessions, :registrations, :passwords]

   as :user do
    get 'admin_login', to: 'devise/sessions#new'
    post 'admin_login', to: 'devise/sessions#create', as: :user_session
    delete 'admin_logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

end
