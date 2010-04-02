class Category < ActiveRecord::Base
  has_many :articles
  belongs_to :language
  
  validates_presence_of :name,:language_id
end
