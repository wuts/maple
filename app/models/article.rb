# -*- coding: utf-8 -*-
class Article < ActiveRecord::Base
  belongs_to :category
  belongs_to :language
  has_many :comments,:dependent=>:destroy
  has_attached_file :image,
                    :content_type => ['image/jpeg', 'image/png', 'image/pjpeg', 'image/x-png'],
                    :styles=>{ :large=>"600x400>",:thumb=>"132x85>" },
                    :default_url => "/system/images/defaults/:style_missing.jpg"

  accepts_nested_attributes_for :comments,:reject_if=>proc{|attributes| atrributes['author'].blank? }
  validates_presence_of :title,:language_id,:category_id
  validates_attachment_presence :image

  named_scope :live,:conditions=>{:status=>'live'},:limit=>10,:order=>'created_at DESC'
  named_scope :draft,:conditions=>{:status=>'draft'},:limit=>10,:order=>'created_at DESC'
  named_scope :featured,:conditions=>{:status=>'featured'},:limit=>4,:order=>'created_at DESC'
  named_scope :recent,lambda{{:conditions=>['created_at>?',3.day.ago]}}

  named_scope :news,:conditions=>{:kind=>'news'}
  named_scope :articles,:conditions=>{:kind=>'article'}

  named_scope :hot_articles,:conditions=>{:kind=>'article'},:order=>'clicks DESC',:limit=>10

  named_scope :bulletins,:conditions=>{:kind=>'bulletin'}

  named_scope :language,lambda{|language_id|{:conditions=>['language_id=?',language_id]}}
  named_scope :featured_news,:conditions=>{ :featured=>1,:kind=>'news'}

  named_scope :hotest,:limit=>10,:order=>'clicks DESC'

end
