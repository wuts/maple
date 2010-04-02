class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.integer :id
      t.string :title
      t.text :description
      t.integer :parent_id
      t.integer :language_id

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
