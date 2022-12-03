Rails.application.routes.draw do
  # Rails.application.routes.draw do
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show new create]
    resources :comments, only: %i[create destroy]
    resources :likes, only: [:create]
  end
end
