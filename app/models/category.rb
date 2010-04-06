class Category < ActiveRecord::Base
  has_many :articles
  belongs_to :language

  validates_presence_of :name,:language_id

  named_scope :in_en,:conditions=>{ :language_id=>1 }
  named_scope :in_zh_CN,:conditions=>{ :language_id=>2 }
end
