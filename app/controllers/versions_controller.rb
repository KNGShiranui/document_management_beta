class VersionsController < ApplicationController
  before_action :set_blog, only: %i[index show]
    
  def index
    @blog = Blog.find(params[:blog_id])
    @version = @blog.versions
    #TODO:versionsが定義されてないのは何で？　=>　アソシエーション設定忘れ
  end

  def show
    @version = @blog.versions
    # .find(params[:id])
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
    # ここで(params[:id])とすると、versions_controller内なので:version_idになってしまう
  end

  def version_params
    params.require(:version).permit(:name, :content, :blog_id)
  end
end
