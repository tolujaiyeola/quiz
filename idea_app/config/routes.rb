Rails.application.routes.draw do

  devise_for :users
  root "idea_post#index"

  resources :idea_posts, only: [:new, :create, :show]

  resources :idea_posts, only: [:show] do
    resources :comments, only: [:create]
  end

end
