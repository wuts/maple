class AddTypeToArticles < ActiveRecord::Migration
  def self.up
    add_column :articles, :clicks, :integer
    add_column :articles, :type, :string
  end

  def self.down
    remove_column :articles, :type
    remove_column :articles, :clicks
  end
end
