class ArticlesController < ApplicationController
  # GET /articles
  # GET /articles.xml

  # layout "admin",:except=>[:index,:show]
  uses_yui_editor

  def index
    @articles = Article.all
    @live_articles=Article.live
    @draft_articles=Article.draft
    @recent_articles=Article.recent

    # @posts=Article.paginate :page=>params[:page],:order=>'created_at DESC'
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @articles }
    end
  end

  # GET /articles/1
  # GET /articles/1.xml
  def show

    @article = Article.find(params[:id])
    @hot_articles=Article.hotest
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @article }
    end
  end

# GET /articles/1.xml
  def show_by_slug

    @article = Article.find_by_slug(params[:slug])

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
    @article = Article.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @article }
    end
  end

  # GET /articles/1/edit
  def edit
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
        format.html { redirect_to(@article) }
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
      format.html { redirect_to(articles_url) }
      format.xml  { head :ok }
    end
  end

  private
  def upload
    uploaded_io=params[:Article][:image]
    File.open(Rails.root.join('public','uploads',uploaded_io.original_filename),'w') do |file|
      file.write(uploaded_io.read)
    end
  end
end
