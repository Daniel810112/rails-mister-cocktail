Rails.application.routes.draw do
resources :cocktails, only: [ :show, :new, :create, :edit, :update] do
  resources :doses, only: [:new, :create]
 end
  resources :doses, only: [:destroy]
  root "cocktails#index"
end
