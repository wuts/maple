class RenameAttachmentToArticles < ActiveRecord::Migration
  def self.up
    rename_column :articles,:attachment,:image
  end

  def self.down
     rename_column :articles,:image,:attachment
  end
end
