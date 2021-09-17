Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks:'omniauth'}
  devise_scope :user do
    authenticated :user do
      root 'home#users', as: :authenticated_root
      get 'home', to: "home#users"
      get "users/:id", to: "users#index", as: "user"
      delete "users/:id", to: "users#destroy"
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end