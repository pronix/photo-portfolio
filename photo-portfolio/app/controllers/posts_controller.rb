class PostsController < ApplicationController
  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = Post.new(params[:post])
    respond_to do |format|
      if @post.save
        flash[:notice] = 'post was successfully created.'
        format.html { redirect_to(@post) }
        format.xml  { render :xml => @post, :status => :created, :location => @post }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @Post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    @post = Post.find(params[:id])
    respond_to do |format|
      if @post.update_attributes(params[:post])
        flash[:notice] = 'post was successfully updated.'
        format.html { redirect_to(@post) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @Post.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end


  def comment
     @post=Post.new(params[:post])
    if simple_captcha_valid?
       if self.current_user.nil?
        tmp="Unregistered user"
       else
        tmp=self.current_user.login
       end
       Post.find(params[:id]).comments.create(:author=>tmp,:body=>params[:comment][:body])
       flash[:notice] = "Added your comment"
       redirect_to :action => "show", :id => params[:id]
    else
      @post =  Post.find(params[:id])
      flash[:notice] = "Wrong confirmation!"
      redirect_to :action => "show", :id => params[:id]
    end
  end
  
  def uncomment
   @comment = Post.find(params[:id]).comments.find(params[:comment_id])
   @comment.destroy
    flash[:notice] = "Comment removed!"
    redirect_to :action => "show", :id => params[:id]
  end
  
  def get_all_tags
    @tags = Tag.find(:all)
  end


end
