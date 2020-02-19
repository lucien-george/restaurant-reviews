Rails.application.routes.draw do
  # collection
  # member
  resources :restaurants do
    # /restaurants/...
    collection do
      # get 'top', to: 'restaurants#top', as: :top_restaurants
      get :top
    end

    member do
      get :chef
    end

    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
