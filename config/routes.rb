Rails.application.routes.draw do
  root 'static_pages#home'
  get 'admin'  =>    'static_pages#admin'
  get 'about' =>    'static_pages#about'
  get 'projects' =>   'static_pages#projects'
  get 'roman_emperors_d3' =>  'static_pages#roman_emperors_d3'
  get 'star_wars_crawl' =>  'static_pages#star_wars_crawl'
  get 'tags/:tag', to: 'blogposts#index', as: "tag"

  resources :blogposts
  
  resources :categories

end
