class Language < ActiveRecord::Base
  has_many :categories
  has_many :articles
  has_many :pages  
  validates_presence_of :name
end
