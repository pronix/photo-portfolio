require File.expand_path(File.dirname(__FILE__)+'/../spec_helper')

describe Album do
   before(:each) do
      @valid_attributes={
      :name=>"Name" ,
      :description=>"Some description"
      }
      @existing_album = Album.create(@valid_attributes)
      
    end
    
    it "should validate presence of name" do
      new_album = Album.new(:description=>"Some description")
      new_album.should_not be_valid 
    end
    
    it "should validate presence of description" do
      new_album = Album.new(:name=>"Name" )
      new_album.should_not be_valid 
    end
    
  end
  