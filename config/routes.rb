Rails.application.routes.draw do
  resources :dogs do
    resources :toys, except: [:index]
  end
end
