class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.integer :id
      t.string :title
      t.text :intro
      t.text :body
      t.string :image
      t.string :image_file_name
      t.string :image_content_type
      t.datetime :image_updated_at
      t.integer :category_id
      t.integer :language_id
      t.string :status
      t.integer :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
