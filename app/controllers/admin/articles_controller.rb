class Admin::ArticlesController < Admin::AdminController

  def index
    @kind=params[:k] || 'news'
    @locale=params[:locale] || 'zh_CN'
    @articles = Article.all
    @live_articles=Article.live
    @draft_articles=Article.draft
    @recent_articles=Article.recent
   
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show
    @kind=params[:k] || 'news'
    @locale=params[:locale] || 'zh_CN'
    @article = Article.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

  def inline_render
    @str="render"
    render :inline=>
      "<%=@str%>"
  end

  # GET /articles/new
  # GET /articles/new.xml
  def new
    @kind=params[:k] || 'news'
    @locale=params[:locale] || 'zh_CN'
    @default_status='live'
    @language=Language.find_by_code(@locale)
    @article = Article.new({:language_id=>@language.id,:kind=>@kind,:status=>@default_status})
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_article }
    end
  end

  # GET /articles/1/edit
  def edit
    @kind=params[:k]
    @article = Article.find(params[:id])
  end

  # POST /articles
  # POST /articles.xml
  def create

    @article = Article.new(params[:article])
   
    respond_to do |format|
      if @article.save
        flash[:notice] = 'Article was successfully created.'
        format.html { redirect_to(@article) }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        
        format.html { render :action => "new" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.xml
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        flash[:notice] = 'Article was successfully updated.'
        format.html { redirect_to(@admin_article) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @article.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.xml
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      format.html { redirect_to(admin_articles_url) }
      format.xml  { head :ok }
    end
  end
end


