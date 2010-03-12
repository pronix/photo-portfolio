class Post < ActiveRecord::Base
  has_many :comments
  validates_presence_of :title,:short_desc,:body
end
