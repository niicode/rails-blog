Rails.application.routes.draw do
  # Rails.application.routes.draw do
  resources :users, only: %i[index show] do
    resources :posts, only: %i[index show]
    resources :comments, only: [:create]
    resources :likes, only: [:create]
  end
end
