class Photo < ActiveRecord::Base
  belongs_to :album
  validates_presence_of :name
  has_attached_file :image,:styles => { :medium =>"800x800",:thumb => "140x140" }
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']
end
