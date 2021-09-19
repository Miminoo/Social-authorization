Rails.application.routes.draw do
  devise_for :users, controllers: {omniauth_callbacks: 'omniauth'}
  get "devise/sessions", to: "devise/sessions#new"
  devise_scope :user do
    authenticated :user do
      root 'home#users', as: :authenticated_root
      get 'home', to: "home#users"
      resources :home do 
        collection do 
          put :table_def
          delete :table_def
        end
      end 
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end