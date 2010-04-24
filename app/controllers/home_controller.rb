class HomeController < ApplicationController
  def index

    @language=Language.find_by_code(params[:locale] || 'zh_CN')
    @articles=@language.articles.recent
    @featured_news=@language.articles.featured_news
    @hot_articles=@language.articles.hot_articles
    @bulletins=@language.articles.bulletins
    respond_to do |format|
      format.html
      format.xml { render :xml=> @articls }
    end
  end

end
