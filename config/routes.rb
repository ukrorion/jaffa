Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  namespace :admin do
    root to: 'dashboard#show'

    resource :profile
    resource :company do
      resources :users
      resources :bank_accounts
    end
  end

  namespace :employee do
    root to: 'dashboard#show'

    resource :profile
  end
end
