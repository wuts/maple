# -*- coding: utf-8 -*-
class Article < ActiveRecord::Base
  belongs_to :categories
  has_many :comments 
  validates_presence_of :title
  named_scope :live,:conditions=>{:status=>'live'},:limit=>10,:order=>'created_at DESC'
  named_scope :draft,:conditions=>{:status=>'draft'},:limit=>10,:order=>'created_at DESC'
  named_scope :recent,lambda{{:conditions=>['created_at>?',1.day.ago]}}
 

end
