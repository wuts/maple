class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :id
      t.integer :gallery_id
      t.string :title
      t.text :description
      t.string :filename
      t.integer :ordering
      t.integer :language_id

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
