class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.text :name
      t.references :album
      t.boolean :slideshow

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
