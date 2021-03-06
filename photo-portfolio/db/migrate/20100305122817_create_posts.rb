class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :short_desc
      t.datetime :date
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
