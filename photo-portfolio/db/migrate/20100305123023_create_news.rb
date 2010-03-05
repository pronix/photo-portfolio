class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.string :title
      t.text :short_desc
      t.tdatetime :date
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
