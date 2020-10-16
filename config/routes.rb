Rails.application.routes.draw do
  devise_for :admins
  devise_for :users, :controllers => { registrations: 'users/registrations'}

  devise_scope :user do
    authenticated :user do
      root 'boards#index', as: :authenticated_root
    end
  
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  resources :tasks
  resources :boards
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
