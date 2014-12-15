Rails.application.routes.draw do
  match 'users', to: 'users#index', via: [:get, :post]
end
