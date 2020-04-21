Rails.application.routes.draw do
  root to: 'projects#index'
  resources :projects
  resources :contacts, only: [:index, :new, :create]
  get 'download_pdf', to: "projects#download_pdf"

  devise_for :users, skip: [:sessions, :registrations, :passwords]

   as :user do
    get 'admin_login', to: 'devise/sessions#new'
    post 'admin_login', to: 'devise/sessions#create', as: :user_session
    delete 'admin_logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

end
