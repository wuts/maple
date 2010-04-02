class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :id
      t.string :title
      t.string :author
      t.string :email
      t.integer :article_id

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
