Rails.application.routes.draw do
  namespace :admin do
    resources :posts

    root to: "posts#index"
  end

  # Start Bootstrap pages.
  root controller: :pages, action: :index
  get  'about',   controller: :pages, action: :about
  get  'post',    controller: :pages, action: :post
  get  'contact', controller: :pages, action: :contact
end
