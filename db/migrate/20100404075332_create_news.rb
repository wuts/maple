class CreateNews < ActiveRecord::Migration
  def self.up
    create_table :news do |t|
      t.integer :id
      t.string :title
      t.text :body
      t.integer :category_id
      t.integer :status
      t.string :image
      t.integer :featured
      t.integer :language_id

      t.timestamps
    end
  end

  def self.down
    drop_table :news
  end
end
