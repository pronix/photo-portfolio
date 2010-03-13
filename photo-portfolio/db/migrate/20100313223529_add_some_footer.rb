class AddSomeFooter < ActiveRecord::Migration
  def self.up
   Footer.create :body=>"Some footer"
  end

end
