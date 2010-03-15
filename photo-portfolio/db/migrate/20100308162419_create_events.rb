class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.text :short_desc
      t.text :body
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
