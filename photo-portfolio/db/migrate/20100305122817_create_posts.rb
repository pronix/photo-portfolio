class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :short_desc
      t.datetime :date
      t.text :body
      t.image_file_name :string
      t.image_content_type :string
      t.image_file_size :integer
      t.image_updated_at :datetime

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
