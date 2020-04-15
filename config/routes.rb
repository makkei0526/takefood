Rails.application.routes.draw do

  devise_for :shops
  root to: "pages#home"
end
