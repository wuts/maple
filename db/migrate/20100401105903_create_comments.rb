class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :id
      t.string :author
      t.string :email
      t.text :comment
      t.integer :article_id
      t.integer :parent_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
