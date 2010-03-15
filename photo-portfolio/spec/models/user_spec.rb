require File.expand_path(File.dirname(__FILE__)+'/../spec_helper')

describe Contact do
   before(:each) do
      @valid_attributes={
      :login=>"user",
      :name=>"Name",
      :email=>"bod-lv@bigmir.net"
      }
      @existing_user = User.create(@valid_attributes)
      @long_login = "11111111111111111111111111111111111111111111111111111111111111111111111"
      
    end
    
    it "should validate presence of login" do
      new_user = User.new(:name=>"Name",:email=>"bod-lv@bigmir.net")
      new_user.should_not be_valid 
    end
    
    it "should validate presence of email" do
      new_user = User.new(:name=>"Name",:login=>"User")
      new_user.should_not be_valid 
    end
    
    it "should validate uniqueness of login" do
      new_user = User.new(@valid_attributes)
      new_user.should_not be_valid 
    end
    
    it "should validate length of login" do
      new_user = User.new(:login=>'N',:name=>"Name",:email=>"bod-lv@bigmir.net")
      new_user.should_not be_valid 
      new_user = User.new(:login=>'N',:name=>"Name",:email=>"bod-lv@bigmir.net")
      new_user.should_not be_valid 
    end
   
    it "should validate format of email" do
       new_user = User.new(:login=>'User',:name=>"Name",:email=>"br.n")
      new_user.should_not be_valid 
    end
    
    it "should validate length of email" do
       new_user = User.new(:login=>'User',:name=>"Name",:email=>"b@r.ru")
      new_user.should_not be_valid 
    end
  end
  