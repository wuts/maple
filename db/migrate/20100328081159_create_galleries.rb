class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.integer :id
      t.string :title
      t.string :slug

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
