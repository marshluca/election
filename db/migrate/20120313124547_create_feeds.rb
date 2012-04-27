class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :title
      t.integer :author_id
      t.integer :category_id
      t.text :content
      t.string :image_url
      t.string :origin_url
      t.string :source
      t.integer :status, :default => 1
      t.integer :vote_count, :default => 0

      t.timestamps
    end

    add_index :feeds, [:author_id, :status], :name => 'author_feeds'
    add_index :feeds, [:category_id, :status], :name => 'category_feeds'
  end
end