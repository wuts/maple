# -*- coding: utf-8 -*-
class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :language
  has_many :comments,:dependent=>:destroy
  has_attached_file :image,:style=>{ :large=>'600x400>',:medium=>'300x300>',:thumb=>'100x100>' }
  accepts_nested_attributes_for :comments,:reject_if=>proc{|attributes| atrributes['author'].blank? }
  validates_presence_of :title,:language_id,:category_id
  validates_attachment_presence :image

  named_scope :live,:conditions=>{:status=>'live'},:limit=>10,:order=>'created_at DESC'
  named_scope :draft,:conditions=>{:status=>'draft'},:limit=>10,:order=>'created_at DESC'
  named_scope :featured,:conditions=>{:status=>'featured'},:limit=>4,:order=>'created_at DESC'
  named_scope :recent,lambda{{:conditions=>['created_at>?',3.day.ago]}}
  named_scope :news,:conditions=>{:type=>'news'},:limit=>10,:order=>'created_at DESC'
  named_scope :posts,:conditions=>{:type=>'posts'},:limit=>10,:order=>'created_at DESC'
    
end
