Rails.application.routes.draw do
  resources :dogs do
    resources :toys
  end
end
