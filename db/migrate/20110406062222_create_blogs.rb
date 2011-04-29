class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :title
      t.string :location
      t.datetime :date_of_event
      t.string :emphasis
      t.string :author
      t.string :photographer
      t.text :information
      t.text :tags
      t.integer :category_id
      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
