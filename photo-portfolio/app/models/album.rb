class Album < ActiveRecord::Base
  has_many :pictures
  validates_presence_of :name,:description
end
