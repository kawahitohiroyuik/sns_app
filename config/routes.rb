#Rails.application.routes.draw do
  #devise_for :users
  # アプリケーションのルーティングをDSL形式で定義します。
  # 詳細なルーティングの記述方法は https://guides.rubyonrails.org/routing.html を参照してください。

  # ルートパスを定義します ("/")
  # root "articles#index"

  # PostsController
  # "posts/new" へのアクセスを "posts#new" アクションに割り当てます
  
  # get '/', to: 'posts#index', as: 'index_post'
  #root 'posts#index'

  #get 'posts/new', to: 'posts#new', as: 'new_post'
  
  # TopicsController
  # "topics/new" へのアクセスを "topics#new" アクションに割り当てます
  #get 'topics/new', to: 'topics#new', as: 'new_topic'
  # "topics/edit" へのアクセスを "topics#edit" アクションに割り当てます
  #get 'topics/edit', to: 'topics#edit', as: 'edit_topic'
#end
# Rails.application.routes.draw do
#  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # PostsController
 # get '/', to: 'posts#index', as: 'index_post'
#  get 'posts/new', to: 'posts#new', as: 'new_post'
  # この行を追加
 # post 'posts/new', to: 'posts#create', as: 'create_post'

  # TopicsController
#  get 'topics/new', to: 'topics#new', as: 'new_topic'
#  get 'topics/edit/:id', to: 'topics#edit', as: 'edit_topi
# end

#Rails.application.routes.draw do
  # 他のルート設定...

  # /topics/new にPOSTメソッドでアクセスした場合、TopicsControllerのcreateアクションにルーティング
 # post '/topics/new', to: 'topics#create'

  # /topics/edit へのリダイレクト設定
 # get '/topics/edit', to: 'topics#edit'

  # 他のルート設定...
#end

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # PostsController
  get '/', to: 'posts#index', as: 'index_post'
  get 'posts/new', to: 'posts#new', as: 'new_post'
  # この行を追加
  post 'posts/new', to: 'posts#create', as: 'create_post'

  # TopicsController
  get 'topics/new', to: 'topics#new', as: 'new_topic'
  get 'topics/edit/:id', to: 'topics#edit', as: 'edit_topic'
end

Rails.application.routes.draw do
  # 他のルート設定...

  # /topics/new にPOSTメソッドでアクセスした場合、TopicsControllerのcreateアクションにルーティング
  post '/topics/new', to: 'topics#create', as: 'create_topic'

  # /topics/edit へのリダイレクト設定
  get '/topics/edit', to: 'topics#edit', as: 'edit_topic'

  # 他のルート設定...
end

Rails.application.routes.draw do
  # 他のルート設定...

  # /topics/edit にPOSTメソッドでアクセスした場合、TopicsControllerのupdateアクションにルーティング
  post 'topics/edit', to: 'topics#update', as: 'update_topic'

  # 他のルート設定...
  
end
