class Album < ActiveRecord::Base
  has_many :photo
  validates_presence_of :name,:description
end
