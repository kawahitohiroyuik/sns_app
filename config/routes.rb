Rails.application.routes.draw do
  # アプリケーションのルーティングをDSL形式で定義します。
  # 詳細なルーティングの記述方法は https://guides.rubyonrails.org/routing.html を参照してください。

  # ルートパスを定義します ("/")
  # root "articles#index"

  # PostsController
  # "posts/new" へのアクセスを "posts#new" アクションに割り当てます
  get 'posts/new', to: 'posts#new', as: 'new_post'
  
  # TopicsController
  # "topics/new" へのアクセスを "topics#new" アクションに割り当てます
  get 'topics/new', to: 'topics#new'
  # "topics/edit" へのアクセスを "topics#edit" アクションに割り当てます
  get 'topics/edit', to: 'topics#edit'
end
