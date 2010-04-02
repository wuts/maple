class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :id
      t.integer :gallery_id
      t.string :name
      t.string :intro
      t.text :description
      t.string :attachment

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
