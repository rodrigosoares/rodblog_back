Rails.application.routes.draw do
  namespace :admin do
    resources :posts

    root to: "posts#index"
  end

  # root controller: :posts, action: :index

  # Start Bootstrap pages.
  root 'clean_blogs#index'
  get  'about',   controller: :clean_blogs, action: :about
  get  'post',    controller: :clean_blogs, action: :post
  get  'contact', controller: :clean_blogs, action: :contact
end
