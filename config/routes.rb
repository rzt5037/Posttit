Rails.application.routes.draw do
  #get 'question/index'

  #get 'question/show'

  #get 'question/new'

  #get 'question/edit'

  #get 'posts/index'

  #get 'posts/show'

  #get 'posts/new'

  #get 'posts/edit'

  resources :posts, :questions

  #get 'welcome/index'

  #get 'welcome/about'

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
