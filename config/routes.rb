Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:show] do
    resources :items, only: [:create, :destroy] do
      put :toggle
    end
  end

  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

end
