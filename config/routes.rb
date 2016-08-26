Rails.application.routes.draw do

  resources :jugadore, only: [:index] do
    collection do
      get :search
    end
end

  root 'jugadore#index'
  #root 'galilean_moon#main'
  #root 'application#index'
end
