Rails.application.routes.draw do
  root to: "pages#home"
  get "/about", to: "pages#about"
  get 'download_pdf', to: "pages#download_pdf"
  get "/contact", to: "contacts#index", as: 'contact'
  get "/admin_home", to: "admin#home"
  resources :projects, param: :slug
  resources :contacts, only: [ :new, :create]

  devise_for :users, skip: [:sessions, :registrations, :passwords]

   as :user do
    get 'admin_login', to: 'devise/sessions#new'
    post 'admin_login', to: 'devise/sessions#create', as: :user_session
    delete 'admin_logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

end
