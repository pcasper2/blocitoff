Rails.application.routes.draw do
  devise_for :users
  get 'to_dos/new'

  get 'to_dos/delete'

  get 'to_dos/edit'

  get 'to_dos/create'

  resources :users, only: [:show] do
    resources :to_dos do
      put :toggle
    end
  end

  get 'welcome/index'

  get 'welcome/about'

  root to: 'welcome#index'

end
