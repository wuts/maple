class Gallery < ActiveRecord::Base
  belongs_to :gallery
  validates_presence_of :title
end
