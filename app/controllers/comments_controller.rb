class CommentsController < ApplicationController

  # POST /comments
  def create
    @article=Article.find(params[:article_id]) 
    @comment=@article.comments.build(params[:comment])
    @comment.save!
    redirect_to @article
  end
end
