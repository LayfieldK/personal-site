Rails.application.routes.draw do
  root 'static_pages#home'
  get 'admin'  =>    'static_pages#admin'
  get 'about' =>    'static_pages#about'
  get 'projects' =>   'static_pages#projects'
  get 'data_visualization' =>  'static_pages#data_visualization'
  get 'data_visualization2' =>  'static_pages#data_visualization2'
  get 'tags/:tag', to: 'blogposts#index', as: "tag"

  resources :blogposts
  
  resources :categories

end
