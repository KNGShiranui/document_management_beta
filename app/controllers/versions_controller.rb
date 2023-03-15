class Blogs::VersionsController < ApplicationController
  def show
    @blog = Blog.find(params[:blog_id]) 
    # ここで(params[:id])とすると、versions_controller内なので:version_idになってしまう
    @version = @blog.versions.find(params[:id])
  end
end
