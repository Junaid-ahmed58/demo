Rails.application.routes.draw do
  get 'leaves/index'
  get 'leaves/create'
  get 'leaves/update'
  resources :users
  resources :projects
  resources :news
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

  # scope module: 'admin' do
  #  resources :posts, :comments
  # end

  #scope '/admin' do
    #Sresources :articles, :comments
  # end
  #resources :articles do
    #resources :comments, only: [:index, :new, :create]Topics which are not clear of Controllers
  
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


  # resource :articles 
  # get '/articles/:id', to: 'articles#photos'
 
  #resource :photos
 
 

  # resources :employees do
  #   get 'leaves'
  # end  


  # namespace :admin do 
  #  resources :employees
  # end

  
  # scope module: 'admin' do
  #   resources :employees
  # end

  # scope 'admin' do
  #   resources :employees
  # end


  # resources :employees do
  #   resources :posts do
  #     resources :comments
  #   end
  # end


  #resources :employees do 
   # resources :comments, only: [:index, :new, :create]
  #end


  # resources :employees do 
  #  resources :comments, shallow: true
  # end
  
  #resources :drafts
  #resources :quotes


  # resources :articles, shallow: true do
  #   resources :comments
  #   resources :quotes
  #   resources :drafts
  # end
 
  shallow do
    resources :articles do
      resources :comments
      resources :quotes
      resources :drafts
    end
  end

  # resources :magzines

  # resource :drafts

end

