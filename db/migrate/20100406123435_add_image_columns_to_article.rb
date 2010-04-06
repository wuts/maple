class AddImageColumnsToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles,:image_file_name,:string
    add_column :articles,:image_content_type,:string
    add_column :articles,:image_file_size,:integer
    add_column :articles,:image_updated_at,:datetime
  end

  def self.down
    remove_column :articles,:image_file_name,:string
    remove_column :articles,:image_content_type,:string
    remove_column :articles,:image_file_size,:integer
    remove_column :articles,:image_updated_at,:datetime
  end
end
