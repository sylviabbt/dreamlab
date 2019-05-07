Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/dream-gallery" => "pages#dream_gallery"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :kids, only: [:create, :new, :show, :edit, :update] do
    resources :drawings, only: [:create, :new, :show]
    resources :collaborations, only: [:show]
  end

  resources :drawings, only: [:index, :destroy] do
    get '/download' => 'drawings#download'
  end

  resources :creators, only: [:index, :create, :new, :show, :edit, :update] do
    resources :collaborations, only: [:show, :edit, :update, :destroy]
  end

  resources :posts, only: [:index, :show, :create, :new, :edit, :update, :destroy]

  resources :collaborations, only: [:index, :create,] do
    # new path =>  /collaborations/23/upvote
    get '/download' => 'collaborations#download'
    get '/upvote' => 'collaborations#upvote'
  end

end


# =========================================
# Routes wx-mini-programme
Rails.application.routes.draw do
  # [...]
  namespace :api, defaults: { format: :json } do
    namespace :v1 do

      resources :kids, only: [:create, :new, :show, :edit, :update] do
      resources :drawings, only: [:create, :new, :show]
      resources :collaborations, only: [:show]
    end

    resources :drawings, only: [:index, :destroy] do
      get '/download' => 'drawings#download'
    end

    resources :creators, only: [:index, :create, :new, :show, :edit, :update] do
      resources :collaborations, only: [:show, :edit, :update, :destroy]
    end

    resources :posts, only: [:index, :show, :create, :new, :edit, :update, :destroy]

    resources :collaborations, only: [:index, :create,] do
      # new path =>  /collaborations/23/upvote
      get '/download' => 'collaborations#download'
      get '/upvote' => 'collaborations#upvote'
    end

    end
  end
end
