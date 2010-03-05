class CreateAboutAuthors < ActiveRecord::Migration
  def self.up
    create_table :about_authors do |t|
      t.datetime :date
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :about_authors
  end
end
