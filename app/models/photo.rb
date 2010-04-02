class Photo < ActiveRecord::Base
  belongs_to :gallery
  validates_presence_of :title,:gallery_id,:language_id,:filename

end
