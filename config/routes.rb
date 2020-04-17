Rails.application.routes.draw do

  devise_for :shops, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  root to: "pages#home"

  resources :shops, only: [:index,:show,:edit,:update]do

end
end
