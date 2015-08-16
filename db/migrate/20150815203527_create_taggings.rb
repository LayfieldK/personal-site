class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.integer :blogpost_id
      t.integer :tag_id

      t.timestamps null: false
    end
    add_index :taggings, :blogpost_id
    add_index :taggings, :tag_id
    add_index :taggings, [:blogpost_id, :tag_id], unique: true
  end
end
