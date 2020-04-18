Rails.application.routes.draw do

  devise_for :shops, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  root to: "posts#index"


  resources :foods, only: [:create,:destroy]
  resources :posts, only: [:index,:create]
  resources :comments, only: [:index,:create]

  resources :shops, only: [:index,:show,:edit,:update] do
    resources :posts, only: :new
    resources :foods, only: :new
    collection do
      get 'search'
    end
  end

end
