Rails.application.routes.draw do
  resources :countries
  resources :collections do
    resources :charts
  end
end
