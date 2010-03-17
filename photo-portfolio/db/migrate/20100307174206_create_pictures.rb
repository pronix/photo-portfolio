class CreatePictures < ActiveRecord::Migration
  def self.up
    create_table :pictures do |t|
      t.string  :title
      t.integer :album_id
      t.boolean :slideshow	
      t.string  :image_file_name
      t.string  :image_content_type
      t.integer :image_file_size
      
      t.timestamps
    end
  end

  def self.down
    drop_table :pictures
  end
end
