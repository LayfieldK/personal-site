Rails.application.routes.draw do
  root 'static_pages#home'
  get 'admin'  =>    'static_pages#admin'
  get 'about' =>    'static_pages#about'
  get 'projects' =>   'static_pages#projects'

  resources :blogposts
  resources :tags, except: [:edit]
  resources :categories

end
