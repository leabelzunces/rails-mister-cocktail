Rails.application.routes.draw do

  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  get '/', to: "cocktails#index"
end
