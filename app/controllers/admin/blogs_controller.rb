class Admin::BlogsController < Admin::ArticlesController

  def index
   @articles=Blog.find(1)
   super
  end

  def new
    super
  end
end
