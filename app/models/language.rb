class Language < ActiveRecord::Base
  has_many :categories
  has_many :articles
  
  validates_presence_of :name
end
