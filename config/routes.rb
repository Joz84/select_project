Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :projects, only: [:index, :update], shallow: true do
    resources :bookmarks, only: [:index, :create, :destroy]
  end
  resources :rankings, only: [:update]

end
