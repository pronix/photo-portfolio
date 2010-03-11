class AddSimpleData < ActiveRecord::Migration
  def self.up
 
  Post.create :title=>"First Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}" 
  Post.create :title=>"Second Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}" 
  Post.create :title=>"Third Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}" 
  Post.create :title=>"Fourth Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  Post.create :title=>"Fifth Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  Post.create :title=>"Sixth Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  Post.create :title=>"Seventh Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  
  
  Album.create :name=>"First", :description=>"Something"
  Album.create :name=>"Second", :description=>"Something"
  Album.create :name=>"Third", :description=>"Something"
  Album.create :name=>"Fourth", :description=>"Something"
  Album.create :name=>"Fifths", :description=>"Something"
  Album.create :name=>"Sixts", :description=>"Something"
  
  Contact.create  :name=>"name",:information=>"Some information about author"
  end

  def self.down
  end
end
