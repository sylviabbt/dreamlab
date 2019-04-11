Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :kids, only: [:create, :new, :show, :edit, :update] do
    resources :drawings, only: [:create, :new, :show, :destroy]
  end

  resources :drawings, only: [:index]

  resources :creators, only: [:create, :new, :show, :edit, :update]

  resources :collaborations, only: [:create, :index, :show, :new]

end
