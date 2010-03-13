class FootersController < ApplicationController
  layout 'admin'
  # GET /footers
  # GET /footers.xml
  def index
    @footers = Footer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @footers }
    end
  end

  # GET /footers/1
  # GET /footers/1.xml
  def show
    @footer = Footer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @footer }
    end
  end

  # GET /footers/new
  # GET /footers/new.xml
  def new
    @footer = Footer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @footer }
    end
  end

  # GET /footers/1/edit
  def edit
    @footer = Footer.first
  end

  # POST /footers
  # POST /footers.xml
  def create
    @footer = Footer.new(params[:footer])

    respond_to do |format|
      if @footer.save
        flash[:notice] = 'Footer was successfully created.'
        format.html { redirect_to(@footer) }
        format.xml  { render :xml => @footer, :status => :created, :location => @footer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @footer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /footers/1
  # PUT /footers/1.xml
  def update
    @footer = Footer.find(params[:id])

    respond_to do |format|
      if @footer.update_attributes(params[:footer])
        flash[:notice] = 'Footer was successfully updated.'
        format.html { redirect_to(@footer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @footer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /footers/1
  # DELETE /footers/1.xml
  def destroy
    @footer = Footer.find(params[:id])
    @footer.destroy

    respond_to do |format|
      format.html { redirect_to(footers_url) }
      format.xml  { head :ok }
    end
  end
end
