class AddFeaturedToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles,:featured,:integer
  end

  def self.down
    remove_column :articles,:featured,:integer
  end
end
