require File.expand_path(File.dirname(__FILE__)+'/../spec_helper')

describe Post do
   before(:each) do
      @valid_attributes={
      :title=>"Title",
      :short_desc=>"Description",
      :date=>"#{Time.now}",
      :body=>"Some text"
      }
      @existing_user = User.create(@valid_attributes)
      
    end
    
    it "should validate presence of Title" do
      new_contact = Post.new( :short_desc=>"Something", 
                                               :date=>"#{Time.now}",
                                               :body=>"Some text")
      new_contact.should_not be_valid 
    end
    
    it "should validate presence of Short Descriptiton" do
      new_contact = Post.new( :title=>"Title", 
                                               :date=>"#{Time.now}",
                                               :body=>"Some text")
      new_contact.should_not be_valid 
    end
    
    it "should validate presence of Text" do
      new_contact = Post.new(:short_desc=>"Something", 
                                               :date=>"#{Time.now}",
                                               :title=>"Title")
      new_contact.should_not be_valid 
    end
    
  end