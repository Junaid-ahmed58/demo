Rails.application.routes.draw do
 
  root 'people#index'
  resources :people
  get 'welcome/index'

  resources :articles
  resources :authors
#  root 'welcome#index'

 
end
