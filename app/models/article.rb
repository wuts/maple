# -*- coding: utf-8 -*-
class Article < ActiveRecord::Base
  belongs_to :categories
  belongs_to :language
  has_many :comments,:dependent=>:destroy
  accepts_nested_attributes_for :comments,:reject_if=>proc{|attributes| atrributes['author'].blank? }
  validates_presence_of :title,:language_id,:category_id
 
  named_scope :live,:conditions=>{:status=>'live'},:limit=>10,:order=>'created_at DESC'
  named_scope :draft,:conditions=>{:status=>'draft'},:limit=>10,:order=>'created_at DESC'
  named_scope :recent,lambda{{:conditions=>['created_at>?',3.day.ago]}}
 

end
