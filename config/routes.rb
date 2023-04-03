Rails.application.routes.draw do
  resources :projects
 
  root 'people#index'
  resources :people
  get 'welcome/index'

  #resources :articles
  #get 'articles/test'
  resources :authors do
    resources :blogs
  end


  #root 'welcome#index'
  #resources :projects, :people, :articles, :authors
  #resource :articles 
  #get '/articles/:id', to: 'articles#junaid'

  #namespace :admin do 
   #resources :articles, :comments
  #end

  #scope module: 'admin' do
  #  resources :articles, :comments
  #end

  #scope '/admin' do
   # resources :articles, :comments
  #end

  #resources :articles do
  #  resources :comments, shallow: true
  #end
  resources :articles do
    member do
      get 'preview'
    end
  end
  
  resources :articles do
    collection do
      get 'search'
    end
  end 

  #get 'blogs/:id', to: 'blogs#display'

  #get 'blogs/:id/:user:id', to: 'blogs#show'

  #get 'blogs/:id/with_user/:user_id', to: 'blogs#show'
  #get 'blogs/:id', to: 'blogs#show', defaults: { format: 'jpg'}
  #get 'blogs', to: 'blogs#destroy', as: :logout
  match 'blogs', to: 'blogs#show', via: [:get, :post]
  #get 'blogs/:id', to: 'blogs#show', constraints: { id: /[A-Z]\d{5}/ }
  get 'blogs/:id', to: 'blogs#show', id: /[A-Z]\d{5}/ 

  get 'articles', to: 'articles#index', constraints: { subdomain: 'admin' }

  get '*path', to: 'author#index', constraints: authorConstraint.new
end

