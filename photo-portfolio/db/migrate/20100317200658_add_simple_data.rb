class AddSimpleData < ActiveRecord::Migration
  def self.up
 
  Post.create :title=>"First Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}" 
  Post.create :title=>"Second Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}" 
  Post.create :title=>"Third Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}" 
  Post.create :title=>"Fourth Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  Post.create :title=>"Fifth Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  Post.create :title=>"Sixth Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  Post.create :title=>"Seventh Post", :short_desc=>"Admin", :body=>"Some text", :date=>"#{Time.now}"
  end

  def self.down
  end
end
