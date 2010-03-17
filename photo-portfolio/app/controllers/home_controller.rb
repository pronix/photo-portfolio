class HomeController < ApplicationController
    layout 'main'
  def index
    @albums = Album.find(:all)
    @photos = Picture.find(:all, :conditions => ['slideshow = ?', true])
  end

  def slideshow
    @albums = Album.find(:all)
    @photos = Picture.find(:all, :conditions => ['slideshow = ?', true])
    @collection = @photos
  end
  
end
