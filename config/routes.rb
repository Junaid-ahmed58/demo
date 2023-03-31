Rails.application.routes.draw do
  resources :projects
 
  root 'people#index'
  resources :people
  get 'welcome/index'

  resources :articles
  resources :authors
#  root 'welcome#index'

 
end
