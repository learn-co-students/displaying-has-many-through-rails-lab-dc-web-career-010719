Rails.application.routes.draw do
  resources :doctors, only: %i(index show)
  resources :patients, only: %i(index show)
  resources :appointments, only: %i(show)
end
