#class PostsController < ApplicationController
  #def new
    #render :new
  #end
  #def index
   #render :index
  #end
#end 
class PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    render :index # renders app/views/posts/index.html.erb
  end

  def new
    render :new # renders app/views/posts/new.html.erb
  end

  # このActionを追加
  def create
    redirect_to new_post_path # redirects to GET "/posts/new"
  end
end

#class PostsController < ApplicationController
#  before_action :authenticate_user!

#  def index
#    @posts = Post.all # すべての投稿を取得
#  end
#  def new
#    @post = Post.new # 新しい投稿オブジェクトを作成
#  end

#  def create
#    @post = Post.new(post_params) # フォームからのデータで新しい投稿オブジェクトを作成

#    if @post.save
      # 保存成功時の処理
#      redirect_to posts_path, notice: '投稿が成功しました。'
#    else
      # 保存失敗時の処理
#      render :new
#    end
#  end

#  private

#  def post_params
#    params.require(:post).permit(:title, :body)
#  end
#end
