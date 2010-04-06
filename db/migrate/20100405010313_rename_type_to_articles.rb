class RenameColumnToArticle < ActiveRecord::Migration
  def self.up
    rename_column :articles,:type,:kind
  end

  def self.down
    rename_column :articles,:kind,:type
  end
end
