Rails.application.routes.draw do
  devise_for :users,
    controllers: { sessions: 'admin/sessions' },
    path: 'admin',
    path_names: { sign_in: 'login', sign_out: 'logout' }

  namespace :admin do
    resources :posts
    resources :projects

    root to: 'posts#index'
  end

  root controller: :pages, action: :home

  get  'about',   controller: :pages, action: :about
  get  'contact', controller: :pages, action: :contact

  resources :posts,    only: [:index, :show]
  resources :projects, only: [:index, :show]
end
