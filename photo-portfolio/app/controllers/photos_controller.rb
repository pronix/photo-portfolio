class PhotosController < ApplicationController
 layout 'admin'
def create
    @photo = Photo.create( params[:photo] )
    if @photo.save
      flash[:notice] = 'Photo was successfully uploaded'
      redirect_to photos_path
    else
      redirect_to new_photo_path
    end
  end
 
  def edit
    @albums = Album.all
    @photo = Photo.find_by_id(params[:id])
  end
 
  def destroy
    @photo = Photo.find_by_id(params[:id])
    @photo.destroy
    redirect_to "/album/#{@photo.album.id}/list/#{@photo.album.id}"
  end
 
  def save
    @photo = Photo.find_by_id(params[:id])
    @photo.name = params[:photo]['name']
    @photo.album_id = params[:photo]['album'].to_i
    @photo.slideshow = params[:photo]['slideshow']
    @photo.save!
    flash[:notice] = 'Photo was successfully updated'
    redirect_to photos_path
  end
 
  def index
    @photos = Photo.find(:all)
  end
 
  # ajax запрос на след фотку
  def next
    @prev = Photo.find_by_id(params[:id])
    if params[:albumid]
    @photo = Photo.find(:all, :conditions => ['album_id = ? and id > ?', @prev.album.id,@prev.id])
    else
    @photo = Photo.find(:all, :conditions => ['id > ?',@prev.id])
    end
    @next = @photo[1]
    unless @photo.empty?
      @photo = @photo[0]
    else
      @photo = @prev
    end
  end
 
  # ajax запрос на предыдущую фотку
  def prev
    @next = Photo.find_by_id(params[:id])
    if params[:albumid]
    @photo = Photo.find(:all, :conditions => ['album_id = ? and id < ?', @next.album.id,@next.id])
    else
    @photo = Photo.find(:all, :conditions => ['id < ?',@next.id])
    end
    @prev = @photo[@photo.size-3]
 
    unless @photo.empty?
      @photo = @photo.last
    else
      @photo = @next
    end
    render :file => 'admin/photo/next.html.erb', :layout => nil
  end
end
 