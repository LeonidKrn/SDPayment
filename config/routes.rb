Payments::Application.routes.draw do
  root :to => "payments#index"
  resources :payments
end
