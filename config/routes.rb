Rails.application.routes.draw do
  resources :tests
  resources :boards do
    resources :columns do
      resources :tickets
    end
  end
  root "boards#index"
end
