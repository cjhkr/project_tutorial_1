Rails.application.routes.draw do
  devise_for :users
  resources:posts do
    resources:comments
  end
  
  root 'posts#index'
  
  get 'pages/about' => "pages#about"
  post 'posts/:id' => "comments#create"
  get 'search/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
