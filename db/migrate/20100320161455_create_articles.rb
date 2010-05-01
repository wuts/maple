cclass CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.integer :id
      t.string :title
      t.string :slug
      t.integer :category_id
      t.string :attachment
      t.string :intro
      t.string :body
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
