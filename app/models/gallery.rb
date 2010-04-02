class Gallery < ActiveRecord::Base
  has_many :photos
  validates_presence_of :title,:language_id
  
end
