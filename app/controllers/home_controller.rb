class HomeController < ApplicationController
  def index
    @articles=Article.recent
    respond_to do |format|
      format.html
      format.xml { render :xml=> @articles }
    end
  end

end
