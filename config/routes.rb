Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dream-gallery" => "pages#dream_gallery"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :kids, only: [:create, :new, :show, :edit, :update] do
    resources :drawings, only: [:create, :new, :show, :destroy]
    resources :collaborations, only: [:show]
  end

  resources :drawings, only: [:index]

  resources :creators, only: [:create, :new, :show, :edit, :update] do
    resources :collaborations, only: [:show, :edit, :update]
  end

  resources :collaborations, only: [:index, :create]

end
