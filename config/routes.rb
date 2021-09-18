Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks:'omniauth'}
  devise_scope :user do
    authenticated :user do
      root 'home#users', as: :authenticated_root
      get 'home', to: "home#users"
      get "users/:id", to: "users#index", as: "user"
      resources :home do 
        collection do 
          put :bulk_destroy
          delete :bulk_destroy
        end
      end 
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end