class AddLanguageidToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :language_id, :integer
  end

  def self.down
    remove_column :categories, :language_id
  end
end
