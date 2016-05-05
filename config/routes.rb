Rails.application.routes.draw do
  namespace :admin do
    resources :posts

    root to: "posts#index"
  end

  root controller: :pages, action: :home

  get  'about',   controller: :pages, action: :about
  get  'post',    controller: :pages, action: :post
  get  'contact', controller: :pages, action: :contact
end
