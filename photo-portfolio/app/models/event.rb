class Event < ActiveRecord::Base
  validates_presence_of :title,:short_desc,:date,:body
end
