Rails.application.routes.draw do
  root "gardens#index"

  resources :gardens, only: [ :index, :show ] do
    # get '/gardens/:garden_id/plants/new'
    # post '/gardens/:garden_id/plants'
    resources :plants, only: [ :new, :create ]
  end

  # delete '/plants/:id'
  resources :plants, only: :destroy
end
