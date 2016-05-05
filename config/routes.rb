Rails.application.routes.draw do
  namespace :admin do
    resources :posts

    root to: "posts#index"
  end

  root controller: :pages, action: :home

  get  'about',   controller: :pages, action: :about
  get  'contact', controller: :pages, action: :contact

  resources :posts, only: [:index, :show]
end
