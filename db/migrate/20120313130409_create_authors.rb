class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.string :intro
      t.string :image_url
      t.integer :count, :default => 0
      t.integer :status, :default => 1

      t.timestamps
    end
  end
end
