class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :wphone
      t.text :address
      t.text :information

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
