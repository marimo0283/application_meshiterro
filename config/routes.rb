Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"

  resources :post_images, only: [:new, :create, :index, :show]

  get 'homes/top'
  get 'homes/about' => 'homes#about', as: "about"
end
