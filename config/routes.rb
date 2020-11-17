Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # pattern of a route: verb "url", to: "controller#action"
  resources :tasks
end
