#class TopicsController < ApplicationController
#  def new
#    render :new
#  end

#  def create
#    redirect_to 'topics/new'
#  end

#  def edit
#    render :edit
#  end

#  def update
#    redirect_to 'topics/edit'
#  end
#end

class TopicsController < ApplicationController
  def new
    render :new
  end

  def create
    redirect_to new_topic_path # スレッド新規登録ページにリダイレクト
  end

  def edit
    render :edit
  end

  def update
    redirect_to edit_topic_path # スレッド編集ページにリダイレクト
  end
end
