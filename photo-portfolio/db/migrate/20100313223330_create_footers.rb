class CreateFooters < ActiveRecord::Migration
  def self.up
    create_table :footers do |t|
      t.text :body

      t.timestamps
    end
  end

  def self.down
    drop_table :footers
  end
end
