class Gallery < ActiveRecord::Base
<<<<<<< HEAD:app/models/gallery.rb
  has_many :photos
  validates_presence_of :title,:language_id
  
=======
  belongs_to :gallery
  validates_presence_of :title
>>>>>>> b32c7abe52562619ab738f1804b150bcadc0aecc:app/models/gallery.rb
end
