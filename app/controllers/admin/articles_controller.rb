# -*- coding: utf-8 -*-
class Admin::ArticlesController < Admin::AdminController
 @@locale=I18n.locale
 uses_tiny_mce :options => {
                              :theme => 'advanced',
                              :language=>'en',
                              :theme_advanced_resizing => true,
                              :theme_advanced_resize_horizontal => false,
                              :theme_advanced_toolbar_location => "top",  
                              :theme_advanced_toolbar_align => "left",  
                              :theme_advanced_buttons1 => %w{ formatselect fontselect fontsizeselect forecolor backcolor bold italic underline strikethrough sub sup removeformat },
                              :theme_advanced_buttons2 => %w{undo redo cut copy paste separator justifyleft justifycenter justifyright separator indent outdent separator bullist numlist separator link unlink image media emotions separator table separator fullscreen},  
                              :theme_advanced_buttons3 => [],  
                              :theme_advanced_fonts => %w{宋体=宋体;黑体=黑体;仿宋=仿宋;楷体=楷体;隶书=隶书;幼圆=幼圆;Andale Mono=andale mono,times; Arial=arial,helvetica,sans-serif;Arial Black=arial black,avant garde;Book Antiqua=book antiqua,palatino;Comic Sans MS=comic sans ms,sans-serif;Courier New=courier new,courier;Georgia=georgia,palatino;Helvetica=helvetica;Impact=impact,chicago;Symbol=symbol;Tahoma=tahoma,arial,helvetica,sans-serif;Terminal=terminal,monaco;Times New Roman=times new roman,times;Trebuchet MS=trebuchet ms,geneva;Verdana=verdana,geneva;Webdings=webdings;Wingdings=wingdings,zapf dingbats}, 
                              :plugins => %w{ contextmenu paste media emotions table fullscreen inlinepopups }  
                            },
                :only=>[:new,:create,:edit,:update]

  
  def index
    @kind=params[:k] || 'news'
    @locale=params[:locale] || 'zh_CN'
    @language=Language.find_by_code(@locale)
    @articles=Array.new
    @language.articles.each do |article|
       @articles.push(article) if article.kind==@kind
    end

    # @articles=Article.find(:all,:conditions=>['kind=?',@kind])


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
    @categories=@language.categories

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_article }
    end
  end

  # GET /articles/1/edit
  def edit
    @kind=params[:k]
    @locale=params[:locale] || 'zh_CN'
    @language=Language.find_by_code(@locale)
    @categories=@language.categories
    @article = Article.find(params[:id])
   end

  # POST /articles
  # POST /articles.xml
  def create

    @article = Article.new(params[:article])
    @kind=params[:k] || 'news'
    respond_to do |format|
      if @article.save
        flash[:notice] = 'Article was successfully created.'
        format.html { redirect_to(@article) }
        format.xml  { render :xml => @article, :status => :created, :location => @article }
      else
        @locale=params[:locale] || 'zh_CN'
       
        @language=Language.find_by_code(@locale)
       
        @categories=@language.categories
        @kind=params[:k] || 'news'
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


