class HomeController < ApplicationController
  def index
    @articles=Article.recent
    @featured_news=Article.featured_news
    respond_to do |format|
      format.html
      format.xml { render :xml=> @articles }
    end
  end

end
