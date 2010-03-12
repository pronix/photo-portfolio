require File.expand_path(File.dirname(__FILE__)+'/../spec_helper')

describe Contact do
   before(:each) do
      @valid_attributes={
      :name=>"Name" ,
      :email=>"bod-lv@bigmir.net",
      :phone=>"+380968379944",
      :address=>"Some text",
      :information=>"Some information"
      }
      @existing_user = User.create(@valid_attributes)
      
    end
    
    it "should validate presence of information" do
      new_contact = Contact.new(:name=>"Name")
      new_contact.should_not be_valid 
    end
    
  end
  