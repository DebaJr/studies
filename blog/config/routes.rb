Rails.application.routes.draw do
  resources :articles
  
  get 'artigos/:id', to: "blog#articles"
  
  get 'categoria', to: "blog#category" 
  
  root 'blog#index'
end
