class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.integer :id
      t.string :name
      t.string :code
      t.string :image
      t.integer :ordering
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :languages
  end
end
