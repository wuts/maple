class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.integer :id
      t.string :title
      t.text :body
      t.integer :status
      t.integer :language_id

      t.timestamps
    end
  end

  def self.down
    drop_table :pages
  end
end
